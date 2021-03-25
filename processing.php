<?php
include "db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $ref_id = $_POST['ref_id'];
    $t_id = $_POST['t_id'];
    $name = $_POST['name'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $nid = $_POST['nid'];
    $bank_name = $_POST['bank_name'];
    $bank_branch = $_POST['bank_branch'];
    $back_acc = $_POST['back_acc_no'];

    //nid 

    $nid = "INSERT INTO nid(nid_no) VALUES('$nid')";
    $connection->query($nid);

    $query = "SELECT id  FROM nid order by id desc limit 1 ";
    $lastId = $connection->query($query);
    $n_id = $lastId->fetch_object();
    $n_id->id;
  
    //contact insert

    $contact = "INSERT INTO contact(email,phone) VALUES('$email','$phone')";
    $connection->query($contact);

    $query = "SELECT id  FROM contact order by id desc limit 1 ";
    $lastId = $connection->query($query);
    $c_id = $lastId->fetch_object();
    $c_id->id;

    //Bank Detils

    $bank = "INSERT INTO bad(name,acc_no,branch) VALUES('$bank_name','$back_acc','$bank_branch')";
    $connection->query($bank);

    $query = "SELECT id  FROM bad order by id desc limit 1 ";
    $lastId = $connection->query($query);
    $b_id = $lastId->fetch_object();
    $b_id->id;

    //reference insert

    $reference = "INSERT INTO reference(ref_user_id) VALUES('$ref_id')";
    $connection->query($reference);

    $query = "SELECT id  FROM reference order by id desc limit 1 ";
    $lastId = $connection->query($query);
    $r_id = $lastId->fetch_object();
    $r_id->id;

    //user insert

    $user = "INSERT INTO users(name) VALUES('$name')";
   if ($connection->query($user) === TRUE) {
        echo "New record created successfully";
    } else {
        echo "Error: " . $user . "<br>" . $connection->error;
    }
    //header("location: index.php");
}