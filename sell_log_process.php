<?php

include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $marketing_officer = $_POST['marketing_officer'];
    $softwere_id = $_POST['softwere_id'];
    $sell_quantity = $_POST['sell_quantity'];
    $amount = $_POST['amount'];
    $client_id = $_POST['client'];
    $date = date("Y-m-d H:i:s");
   
    $sellLogInsert = "INSERT INTO `sell_log`(`user_id`,`softwere_id`, `sell`, `amount`, `client_id`,
     `created_at`) VALUES ('$marketing_officer','$softwere_id','$sell_quantity','$amount','$client_id','$date')";
   
    if ($connection->query($sellLogInsert)) {
        header('Location: sell_log.php');
    } else {
        echo "Not inserted";
    }
}
