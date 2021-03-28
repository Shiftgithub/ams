<?php
include "db.php"; ?>
<!DOCTYPE html>
<html>

<head>
    <title>ams</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="bootstrap.css"> -->
</head>

<body>
    <br>
    <div class="container">
        <h1 class="bg-primary text-white text-center">Softwere Insert</h1>
        <form action="softwereProcessing.php" method="POST">
            <div class="form-group">
                <label for="softwereId">Softwere Name</label>
                <input type="text" name="softwere_name" value="" id="softwereId" class="form-control">
            </div>
            <div class="form-group">
                <label for="descriptionId">Description</label>
                <input type="text" name="description" value="" id="descriptionId" class="form-control">
            </div>
            <div>
                <button class="btn btn-success ">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>