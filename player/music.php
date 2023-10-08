<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
// Database connection information
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "pilk-radio";

// Create a database connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Check if there is a song currently playing
$sql = "SELECT * FROM music WHERE playing = 1 LIMIT 1";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	while($row = $result->fetch_assoc()) {
		$musicPath = $row["music_path"];
	}
}

if (isset($musicPath)) {
  echo $musicPath;
} else {
  echo "no audio?";
}
// Close the database connection
$conn->close();
?>
