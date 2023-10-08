<div id = "messages">
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

        $sql = "SELECT `name`,`message`,`profile_url`,`id` FROM `chat` ORDER BY id";
        $result = $conn->query($sql);
        $chat=array();
        while ($row = $result->fetch_assoc()) 
        {
            print()
        }
    ?>
</div>
