<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>
<body class="p-3 mb-2 bg-info text-white">

<?php
require_once('db_setup.php');
$sql = "USE mijaz_1;";
if ($conn->query($sql) === TRUE) {
} else {
   echo "Error using  database: " . $conn->error;
}
$faculty_id = $_POST['faculty_id'];
$name = $_POST['name'];
$department = $_POST['department'];
$email = $_POST['email'];
$sql = "INSERT INTO Faculty values ('$faculty_id', '$name', '$department', '$email');";


$result = $conn->query($sql);

if ($result === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
} 

?>

<?php
$conn->close();
?>  

</body>
</html>
