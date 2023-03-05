<?php
require_once('../config.php');
$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$sql = "SELECT * FROM poolStats ORDER BY `poolStats`.`date` ASC";
$result = mysqli_query($conn, $sql);

if (mysqli_num_rows($result) > 0) {
    echo "<table>";
    while($row = mysqli_fetch_assoc($result)) {
        echo $row["date"] . " sportowa: " . $row["sport"] . " rodzinna: " . $row["family"] . " kameralna: " . $row["small"] . " lodowisko: " . $row["ice"] . "<br>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

mysqli_close($conn);
?>