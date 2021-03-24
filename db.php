<?php

$connection = new mysqli("localhost", "root", "", "ams")
    or die("Connection error : " . $connection->connect_error);
