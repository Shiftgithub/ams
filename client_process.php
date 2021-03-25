<?php
 
include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $name = $_POST['name'];
    $address = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $nid = $_POST['nid'];
    $date = date("Y-m-d H:i:s");
    
    $queryInsert = "INSERT INTO `client_profile`(`name`, `adress`, `email`, `phone`, `nid`,`created_at`) 
                    VALUES ('$name','$address','$email','$phone','$nid','$date')";
    $connection->query($queryInsert);

    // if($connection->query($queryInsert)){
    //     echo "Client Data Inserted";
    // }
    header('Location: client_form.php');
}
