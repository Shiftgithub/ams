<?php

include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $user_id = $_POST['user_id'];
    $amount = $_POST['amount'];
    $date = date("Y-m-d H:i:s");
   
    $Insert = "INSERT INTO `sell_by_marketing_executive`(`user_id`, `amount`,`created_at`)
     VALUES ('$user_id','$amount','$date')";
    if ($connection->query($Insert)) {
        header('Location: sell_by_marketing_executive.php');
    } else {
        echo "Not inserted";
    }
}
