<?php
include "db.php";
include "header.php"; ?>

<div class="container">
    <h4>Softwere Insert</h4>
    <hr>
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

<?php include "footer.php"; ?>