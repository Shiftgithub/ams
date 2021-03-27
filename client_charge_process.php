<?php
 
include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    // var_dump($_POST);
    // die();

    $marketing_officer = $_POST['marketing_officer'];
    $client = $_POST['client'];
    $month = $_POST['month'];
    $amount = $_POST['amount'];
    $date = date("Y-m-d H:i:s");

    $clientInsert = "INSERT INTO `client_service_charge`(`r_id`, `month`, `amount`, `client_id`, `created_at`) 
                        VALUES ('$marketing_officer','$month','$amount','$client','$date')";
                        
    if($connection->query($clientInsert)){
        header('Location: client_form.php');
    }else{
        echo "Not inserted";
    }
}
