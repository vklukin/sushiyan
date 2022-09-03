<?php
    session_start();
    require_once '../connect.php';

    $tel = $_POST['tel'];
    $checkUser = mysqli_query($connect, "SELECT * FROM `users` WHERE `phone` = $tel");
    

    if(mysqli_num_rows($checkUser)>0){
        $user = mysqli_fetch_assoc($checkUser);
        $_SESSION['user'] = [
            'id' => $user['id'],
            'name' => $user['name'],
            'phone' => $user['phone'],
            'orders' => $user['orders']
        ];
        header('Location: /templates/profile.php');
    }else{
        mysqli_query($connect, "INSERT INTO `users`(`phone`) VALUES ($tel)");   
        header('Location: /templates/profile.php'); 
    }
    
?>