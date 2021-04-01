<?php

include "../Model/db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $name = $_POST['softwere_name'];
    $description = $_POST['description'];
    $date = date("Y-m-d H:i:s");
   
    $softwereInsert = "INSERT INTO `softwere`(`name`, `description`,`created_at`)
     VALUES ('$name','$description','$date')";
    if ($connection->query($softwereInsert)) {
        header('Location: ../View/softwere.php');
    } else {
        echo "Not inserted";
    }
}
