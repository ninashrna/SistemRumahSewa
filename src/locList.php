<?php
require 'dbconn.php';
$location_id = $_GET['location_id'];
?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Location List Tanjong Malim</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="locListBehrang-style.css">
</head>

<body>
    <section class="title">
        <center><h1>Location List in Tanjong Malim</h1></center>
    </section>

    <section class="container">
    <?php
        $sql = "SELECT * FROM `house` WHERE `location_id` = $location_id";
        $query = mysqli_query($conn, $sql);

        while($house = mysqli_fetch_array($query)){
        ?>
            <div class="card">
                <div class="card-img tanjong-1"></div>
                <h2>Address:</h2>
                <p><?php echo $house['address']; ?></p>
                <h2>Owner's Phone Number:</h2>
                <p><?php echo $house['phNumber']; ?></p>
                <a href="houseDetails.php?house_id=<?php echo $house['id']; ?>">READ MORE</a>
            </div>
        <?php
        }
        ?>
        

        
    </section>
</body>