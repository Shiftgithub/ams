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
        $query = "SELECT * FROM `sell_by_marketing_executive` where user_id = $marketing_officer";
        $sell_by_mes =  mysqli_query($connection, $query);
        foreach ($sell_by_mes as $sell_by_me)
            $uniqueId = $sell_by_me['user_id'];
        $last_amount = $sell_by_me['amount'];
        $amounts = $last_amount + $amount;

        if (!empty($uniqueId)) {
            $update = "UPDATE sell_by_marketing_executive SET 
            amount = '$amounts',updated_at = '$date'  WHERE user_id = $marketing_officer";
            $connection->query($update);
            header('Location: sell_log.php');
        } else ($connection->query("INSERT INTO `sell_by_marketing_executive`(`user_id`, `amount`,`created_at`)
        VALUES ('$marketing_officer','$amount','$date')"));
       header('Location: sell_log.php');
    } else {
        echo "Not inserted";
    }
}
