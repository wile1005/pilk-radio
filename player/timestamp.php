<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
// Database connection information
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pilk-radio";

$GLOBALS['timestamp'] = 0;

// Create a database connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Gets currently playing song
$sql = "SELECT * FROM music WHERE playing = 1 LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) {
    $currentTimestamp = time();
		$playedTimestamp = strtotime($row["last_played"]);
		$length = $row["length"];
    $GLOBALS['timestamp'] = $currentTimestamp - $playedTimestamp;
    //if timestamp is more than music lenght, play new song
    if ($GLOBALS['timestamp'] >= $length) {
      playNew($conn);
    }
	}
  //No music is currently playing
} else {
  playNew($conn); 
}

function playNew($conn) {
  //set playing = 0 in db
  $sql = "UPDATE music SET playing = 0 WHERE playing = 1";
  if ($conn->query($sql) == FALSE) {
    echo "UPDATE PLAYING = 0 FAILED ". $conn->error; 
  }

  //timestamp starts at 0
  $GLOBALS['timestamp'] = 0;

  //Gets new random song
  $sql = "SELECT * FROM music ORDER BY RAND() LIMIT 1";
  $result = $conn->query($sql);
  if ($result->num_rows > 0) {
    while($row = $result->fetch_assoc()) {
      //sets timestamp & playing on new song in db
      $sql = "UPDATE music SET last_played = CURRENT_TIMESTAMP, playing = 1 WHERE id=".$row["id"];
      $conn->query($sql);
    }
  }
}

echo $GLOBALS['timestamp'];

// Close the database connection
$conn->close();
?>
