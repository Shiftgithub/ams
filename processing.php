<?php 
    include "db.php";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {

        $ref_id = $_POST['ref_id'];
        $name = $_POST['name'];
        $email = $_POST['email'];
        $nid = $_POST['nid'];
        $bank_name = $_POST['bank_name'];
        $bank_branch = $_POST['bank_branch'];
        $back_acc = $_POST['back_acc_no'];

        var_dump($_POST);

        //reference insert

        $reference = "INSERT INTO reference(user_id,ref_user_id) VALUES('$userid','$ref_id')";
        mysqli_query($connection, $reference);
   
      
    }
