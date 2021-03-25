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

    if ($connection->autocommit(0) && $connection->begin_transaction()) {

        $queryStatus = true;

        if ($queryStatus) {

            $nid = "INSERT INTO nid(nid_no) VALUES('$nid')";
            $connection->query($nid);

            $query = "SELECT id  FROM nid order by id desc limit 1 ";
            $lastId = $connection->query($query);
            $n_id = $lastId->fetch_array();
            $last_n_id = $n_id['id'];
            if ($queryStatus) {
                //contact insert
                $contact = "INSERT INTO contact(email,phone) VALUES('$email','$phone')";
                $connection->query($contact);

                $query = "SELECT id  FROM contact order by id desc limit 1 ";
                $lastId = $connection->query($query);
                $c_id = $lastId->fetch_array();
                $last_c_id = $c_id['id'];

                if ($queryStatus) {
                    //Bank Detils

                    $bank = "INSERT INTO bad(name,acc_no,branch) VALUES('$bank_name','$back_acc','$bank_branch')";
                    $connection->query($bank);

                    $query = "SELECT id  FROM bad order by id desc limit 1 ";
                    $lastId = $connection->query($query);
                    $b_id = $lastId->fetch_array();
                    $last_b_id =  $b_id['id'];

                    if ($queryStatus) {
                        //user insert
                        $user = "INSERT INTO users(`name`,c_id,b_id,n_id,t_id) VALUES ('$name','$last_c_id','$last_b_id','$last_n_id','$t_id')";
                        $connection->query($user);

                        $query = "SELECT id  FROM users order by id desc limit 1 ";
                        $lastId = $connection->query($query);
                        $u_id = $lastId->fetch_array();
                        $last_u_id = $u_id['id'];
                        if ($queryStatus) {
                            //reference insert

                            $reference = "INSERT INTO reference(user_id,ref_user_id) VALUES('$last_u_id','$ref_id')";
                            $connection->query($reference);
                        }
                    }
                }
            }
        }
        if ($queryStatus) {
            $connection->commit();
            header("location:index.php");
            return true;
        } else {
            $connection->rollback();
        }
   
    }
}
