<?php
include "db.php";
include "header.php"; ?>

<div class="container">
    <h4>Client Service Charge Create</h4>
    <hr>
    <form action="client_charge_process.php" method="POST">
        <div class="form-group">
            <label>Marketing Officer's Name</label>
            <select class="form-control" name="marketing_officer">
                <option>Select Marketing Officer's Name</option>
                <?php
                $query = "SELECT users.id, users.name FROM `users` INNER JOIN TYPE ON users.t_id = TYPE.id WHERE TYPE .id = 3 ";
                $types =  $connection->query($query);
                foreach ($types as $type) : ?>
                    <option value="<?= $type['id'] ?>">
                        <?= $type['name'] ?>
                    </option>
                <?php endforeach; ?>
            </select>
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
        <div class="form-group">
            <label for="monthId">Month</label>
            <input type="text" name="month" value="" id="monthId" class="form-control">
        </div>
        <div class="form-group">
            <label for="amountId">Amount</label>
            <input type="number" name="amount" value="" id="amountId" class="form-control">
        </div>
        <div>
            <button class="btn btn-success ">Submit</button>
        </div>
    </form>
</div>

<?php include "footer.php"; ?>