<?php
// connect to the database
$servername = "localhost";
$username = "username";
$password = "password";
$dbname = "dbname";
$conn = mysqli_connect($servername, $username, $password, $dbname);

// check if the connection is successful
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// get the form data
$name = $_POST['name'];
$email = $_POST['email'];
$topic = $_POST['topic'];
$question = $_POST['question'];

// insert the question into the database
$sql = "INSERT INTO questions (name, email, topic, question) VALUES ('$name', '$email', '$topic', '$question')";
if (mysqli_query($conn, $sql)) {
    echo "Question submitted successfully.";
} else {
    echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}

// close the database connection
mysqli_close($conn);
?>
