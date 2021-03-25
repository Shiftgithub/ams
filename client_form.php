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
        <h1 class="bg-primary text-white text-center">Client Form</h1>

        <form action="client_process.php" method="POST">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" value="" id="name" placeholder="Enter your name" class="form-control">
            </div>
            <div class="form-group">
                <label for="addressId">Address</label>
                <input type="text" name="address" value="" id="addressId" placeholder="Enter your address here" class="form-control">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" value="" id="email" placeholder="Enter your email address" class="form-control">
            </div>
            <div class="form-group">
                <label for="phone">Phone</label>
                <input type="text" name="phone" value="" id="phone" placeholder="Enter your phone number" class="form-control">
            </div>
            <div class="form-group">
                <label for="nidId">Nid No </label>
                <input type="number" name="nid" value="" id="nidId" placeholder="Enter your nid no" class="form-control">
            </div>
            <div>
                <button class="btn btn-success ">Submit</button>
            </div>
        </form>
    </div>
</body>

</html>