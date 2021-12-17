<?php
require 'dbconn.php';
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Location</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="locListBehrang-style.css">
</head>

<body>
    <section class="title">
        <center><h1>Select Location</h1></center>
    </section>

    <section class="container">
        <?php
        $sql = "SELECT * FROM `location`";
        $query = mysqli_query($conn, $sql);

        while($location = mysqli_fetch_array($query)){
        ?>
            <div class="card">
                <h1><?php echo $location['locationName']; ?></h1>
                <a href="locList.php?location_id=<?php echo $location['id']?>">CLICK HERE</a>
            </div>
        <?php
        }
        ?>

        

    </section>
</body>