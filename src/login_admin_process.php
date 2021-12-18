<?php 
session_start();
include "db_connect.php";

if (isset($_POST['email']) && isset($_POST['password'])) {

  function validate($data){
     $data = trim($data);
     $data = stripslashes($data);
     $data = htmlspecialchars($data);
     return $data;
  }

  $email = validate($_POST['email']);
  $pass = validate($_POST['password']);

  if (empty($email)) {
    header("Location: login_admin.php?error=Email is required");
      exit();
  }else if(empty($pass)){
        header("Location: login_admin.php?error=Password is required");
      exit();
  }else{
    $sql = "SELECT * FROM users WHERE email='$email' AND password='$pass'";
        
    $result = mysqli_query($connect, $sql);

    if (mysqli_num_rows($result) === 1) {
      $row = mysqli_fetch_assoc($result);
            if ($row['email'] === $email && $row['password'] === $pass) {
              if ($row['level_id'] === "1") {
                $_SESSION['name'] = $row['username']; /* if login succes session will start*/
                header("Location: adminhome.php"); /* link to admin main page */
              exit();
              }
              else if($row['level_id'] === "2"){
                header("Location: login_admin.php?error=Please login at user login form");
              exit();
              }
              else{
                header("Location: login_admin.php?error=Incorect email or password");
                exit();
              }
            }
    }
    else{
      header("Location: login_admin.php?error=Incorrect email or password");
          exit();
    }
  }

}else{
  header("Location: login_admin.php");
  exit();
}