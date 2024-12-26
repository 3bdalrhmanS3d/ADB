<?php 
    include "conn.php";
    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>view student</title>
</head>
<body>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Email</th>
                <th>Action</th>
            </tr>
    </table>

    <tbody>
    <?php
                        $sql = "SELECT * FROM students";
                        $result = $conn->query($sql);
                        if ($result->num_rows > 0) {
                        while ($row = $result->fetch_assoc()) {
                ?>

                            <tr>
                            <td><?php echo $row['id']; ?></td>
                            <td><?php echo $row['name']; ?></td>
                            <td><?php echo $row['age']; ?></td>
                            <td><?php echo $row['email']; ?></td>
                            <td><a  href="update-student.php?id=<?php echo $row['id']; ?>"><button>Edit</button></a>
                            &nbsp;
                            <a href="delete-student.php?id=<?php echo $row['id']; ?>"><button>Delete</button></a>
                            </td>
                            </tr>

                <?php       }
                    }
                ?>
    </tbody>
</body>
</html>