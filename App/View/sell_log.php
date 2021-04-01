<?php
include "../Model/db.php";
include "../Layout/header.php"; ?>

<div class="container">
    <h4>Sell Log Create</h4>
    <hr>

    <form action="../Controller/sell_log_process.php" method="POST">
        <div class="form-group">
            <label>Marketing Officer's Name</label>
            <select class="form-control" name="marketing_officer">
                <option>Select Marketing Officer's Name</option>
                <?php
                $query = "SELECT users.id, users.name FROM `users` INNER JOIN TYPE ON users.t_id = TYPE.id WHERE TYPE .id = 3 ";
                $users =  $connection->query($query);
                foreach ($users as $user) : ?>
                    <option value="<?= $user['id'] ?>">
                        <?= $user['id'] . '  . ' . $user['name'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label>Softwere Name</label>
            <select class="form-control" name="softwere_id">
                <option>Select Softwere Name</option>
                <?php
                $query = "SELECT * FROM `softwere` ";
                $softweres =  $connection->query($query);
                foreach ($softweres as $softwere) : ?>
                    <option value="<?= $softwere['id'] ?>">
                        <?= $softwere['name'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div class="form-group">
            <label for="sellQuantity">Sell Quantity</label>
            <input type="number" name="sell_quantity" value="" id="sellQuantity" class="form-control">
        </div>
        <div class="form-group">
            <label for="amountId">Amount</label>
            <input type="number" name="amount" value="" id="amountId" class="form-control">
        </div>
        <div class="form-group">
            <label>Client's Name</label>
            <select class="form-control" name="client">
                <option>Select Client's Name</option>
                <?php
                $query_client = "SELECT `id`, `name` FROM `client_profile` ";
                $query_clients =  $connection->query($query_client);
                foreach ($query_clients as $query_client) : ?>
                    <option value="<?= $query_client['id'] ?>">
                        <?= $query_client['name'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
        </div>
        <div>
            <button class="btn btn-success ">Submit</button>
        </div>
    </form>
</div>

<?php include "../Layout/footer.php"; ?>