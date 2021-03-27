<?php
 
include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
   
    $marketing_officer = $_POST['marketing_officer'];
    $sell_quantity = $_POST['sell_quantity'];
    $amount = $_POST['amount'];
    $client = $_POST['client'];
    $date = date("Y-m-d H:i:s");

    $sellLogInsert = "INSERT INTO `sell_log`(`user_id`, `sell`, `amount`, `clien_id`, `created_at`) 
    VALUES ('$marketing_officer','$sell_quantity','$amount','$client','$date')";
                        
    if($connection->query($sellLogInsert)){
        header('Location: sell_log.php');
    }else{
        echo "Not inserted";
    }
}
