<!DOCTYPE html>
<html>
<head>

<!-- Latest compiled and minified CSS -->
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

$employer_name = $_POST['employer_name'];
$sql = "SELECT job_id, name, email, description, majors FROM (Jobs INNER JOIN Employers on Jobs.employer_id = Employers.employer_id) WHERE name = '$employer_name';";

$result = $conn->query($sql);

if($result->num_rows > 0){

    ?>
       <table class="table table-striped">
          <tr>
             <th>Job ID</th>
             <th>Name</th>
             <th>Email</th>
             <th>Description</th>
             <th>Majors</th>
          </tr>
    <?php
    while($row = $result->fetch_assoc()){
    ?>
          <tr>
              <td><?php echo $row['job_id']?></td>
              <td><?php echo $row['name']?></td>
              <td><?php echo $row['email']?></td>
              <td><?php echo $row['description']?></td>
              <td><?php echo $row['majors']?></td>
          </tr>
    
    <?php
    }
    }
    else {
    echo "Nothing to display";
    }
    ?>
    
        </table>
    
    <?php
    $conn->close();
    ?>  
    <div class="container">
  <div class="row">
    <div class="col text-center">
      <a class="btn btn-primary" href="search_jobs.html" role="button">Back</a>
    </div>
  </div>
</div>
    </body>
    </html>
    