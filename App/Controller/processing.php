<?php
include "../Model/db.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $username = mysqli_real_escape_string($connection, $_POST['username']);
    $password = mysqli_real_escape_string($connection, $_POST['password']);

    $data = "SELECT * FROM `login_info` WHERE username = '$username' and password = '$password'";
    $result = mysqli_query($connection, $data);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    $active = $row['active'];

    $count = mysqli_num_rows($result);

    if ($count == 1) {

        header("location: ../View/user_form.php");
    } else {
        $error = "Your Login Name or Password is invalid";
    }
}
