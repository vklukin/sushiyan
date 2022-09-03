<?php
    session_start();
    require_once '../connect.php';

    $name = $_POST['userName'];
    $phone = $_SESSION['user'];

    $checkUser = mysqli_query($connect, "SELECT * FROM `users` WHERE `phone` = '{$phone['phone']}'");    
    $user = mysqli_fetch_assoc($checkUser);

    // print_r($user);

    $query = "UPDATE `users` SET `name`='$name' WHERE `phone` = '{$phone['phone']}'";
    mysqli_query($connect, $query);

    $checkUser1 = mysqli_query($connect, "SELECT * FROM `users` WHERE `phone` = '{$phone['phone']}'");    
    $user1 = mysqli_fetch_assoc($checkUser1);
    $_SESSION['user'] = [
        'id' => $user1['id'],
        'name' => $user1['name'],
        'phone' => $user1['phone'],
        'orders' => $user1['orders']
    ];
    $_SESSION['message'] = 'Данные успешно сохранены';
    header('Location: /templates/profile.php');
?>