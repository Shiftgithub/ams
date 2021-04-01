<!DOCTYPE html>
<html>

<head>
    <title>
        Log in AMS</title>
    <!--Add page Responsive Web Design link  -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--Add Bootstrap link-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- fontawesome cdn-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>

<body>
    <br>
    <br>
    <br>
    <div class="container">
        <div>
            <h1 class="bg-info text-white text-center">Adova Soft Managment System <h1>
        </div>
        <div class="card">
            <div class="card-body">
                <form action="../ams/App/Controller/processing.php" method="POST">
                    <div class="form-group">
                        <label for="email">User Name </label>
                        <input type="email" name="username" value="" id="email" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="password">Password </label>
                        <input type="password" name="password" value="" id="password" class="form-control">
                    </div>
                    <div>
                        <button class="btn btn-success"> Submit </button>
                    </div>
                    <div>
                        <br>
                        <a href="#">Create user </a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>

</html>