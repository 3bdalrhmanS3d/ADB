
<?php
include "dbconfig.php";

if (isset($_POST['submit'])) {


  $name = $_POST['name'];
  $age = $_POST['age'];
  $email = $_POST['email'];

  // Way 1:
  $sql = "INSERT INTO students(name, age, email) VALUES ('$name',$age,'$email')";
  $result = $conn->query($sql);
  if ($result == TRUE) {
    echo "New record created successfully.";
    header('Location: view-student.php');
  }else{
    echo "Error:". $sql . "<br>". $conn->error;
  }
  $conn->close();
}

/*
OR
Way 2:
    $sql="INSERT INTO students(name, age, email) VALUES (?,?,?);";
    $stmt=$conn->prepare($sql);
    $stmt->bind_param("sis",$name ,$age,$email);
    $name = $_POST['name'];
    $age = $_POST['age'];
    $email = $_POST['email'];
    $stmt->execute();
    $stmt->close();
*/






/*

query():
    function inside mysqli class,
    take mysql command as string,
    take one command,
    return true if executed succefully else return false.
    in case of select command query() return object.

multi_query():
    to execute more than one command,
    return true if executed succefully else return false.

prepare():
    way to protect from sql injection return object.

$_POST or $_GET:
    are arrays to get form data.

isset():
    evaluated to true if button inside it  is clicked (button in this example is submit button).

*/

?>