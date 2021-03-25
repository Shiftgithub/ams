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
    <div class="container">
        <h1 class="bg-primary text-white text-center">Adova Soft Management System</h1>

        <form action="processing.php" method="POST"  autocomplete="off">
            <div class="form-group">
                <label>Refarence Name </label>
                <select class="form-control" name="ref_id">
                    <option>Select Refarence Name</option>
                    <?php
                        $query = "SELECT reference.id, users.name FROM `reference` INNER JOIN users ON reference.user_id = users.id ";
                        $references =  mysqli_query($connection, $query);
                        foreach ($references as $reference) : ?>
                    <option value="<?= $reference['id'] ?>">
                        <?= $reference['name'] ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label>Type </label>
                <select class="form-control" name="t_id">
                    <option>Select type</option>
                    <?php
                    $query = "SELECT * FROM `type`";
                    $types =  mysqli_query($connection, $query);
                    foreach ($types as $type) : ?>
                    <option value="<?= $type['id'] ?>">
                        <?= $type['name'] ?>
                    </option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group">
                <label for="name">Name </label>
                <input type="text" name="name" value="" id="name" placeholder="Enter your name" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email </label>
                <input type="email" name="email" value="" id="email" placeholder="Enter your email address"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="phone">Phone </label>
                <input type="text" name="phone" value="" id="phone" placeholder="Enter your phone number"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="nidId">Nid No </label>
                <input type="number" name="nid" value="" id="nidId" placeholder="Enter your nid no"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="bankName">Bank Name </label>
                <input type="text" name="bank_name" value="" id="bankName" placeholder="Enter your bank name"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="bankBranch">Bank Branch </label>
                <input type="text" name="bank_branch" value="" id="bankBranch" placeholder="Enter your bank branch"
                    class="form-control">
            </div>
            <div class="form-group">
                <label for="bankAccNo">Bank Account No </label>
                <input type="number" name="back_acc_no" value="" id="bankAccNo" placeholder="Enter your account no"
                    class="form-control">
            </div>
            <div>
                <button class="btn btn-success ">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>