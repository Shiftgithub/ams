<?php
include "db.php";
include "header.php"; ?>

<div class="container">
    <h4>Sell by marketing executive create</h4>
    <hr>

    <form action="sell_by_marketing_executive_processing.php" method="POST" autocomplete="off">
        <div class="form-group">
            <label>User Name </label>
            <select class="form-control" name="user_id">
                <option>Select Refarence Name</option>
                <?php
                $query = "SELECT users.id, users.name FROM `users` INNER JOIN type ON users.t_id = type.id WHERE type.id=3 ";
                $users =  mysqli_query($connection, $query);
                foreach ($users as $user) : ?>
                    <option value="<?= $user['id'] ?>">
                        <?= $user['name'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="amount"> Amount </label>
            <input type="number" name="amount" value="" id="amount" class="form-control">
        </div>
        <div>
            <button class="btn btn-success ">Submit</button>
        </div>
    </form>
</div>

<?php include "footer.php"; ?>