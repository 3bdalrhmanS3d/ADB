<?php 
    include "conn.php";
    
    if(isset($_POST['submit']))
    {
        $name = $_POST['name'];
        $age = $_POST['age'];
        $email = $_POST['email'];

        $sql = "Insert into students(name, age, email) values('$name', $age, '$email')";

        $result = $conn->query($sql);

        if($result == true)
        {
            echo "New record created suc" ;
            header('Location view-student.php');

        }
        else{
            echo "Erroe " . $sql . "<br>" . $conn->error;
        }

    }
?>