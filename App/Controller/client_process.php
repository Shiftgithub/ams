<?php
 
 include "../Model/db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $name = $_POST['name'];
    $address = $_POST['address'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $nid = $_POST['nid'];
    $date = date("Y-m-d H:i:s");
    
    $queryInsert = "INSERT INTO `client_profile`(`name`, `adress`, `email`, `phone`, `nid`,`created_at`) 
                    VALUES ('$name','$address','$email','$phone','$nid','$date')";
                    
    if($connection->query($queryInsert)){
        header('Location: ../View/client_form.php');
    }else{
        echo "Not inserted";
    }
}
