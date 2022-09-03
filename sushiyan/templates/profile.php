<?php session_start();
$user = $_SESSION['user'];
?>
<!DOCTYPE html>
<html lang="ru">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sushiyan</title>
    <link rel="shortcut icon" href="/assets/images/img/logo-01.svg" type="image/x-icon">
    <!-- CSS only -->
    <link rel="stylesheet" href="/assets/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>

<body style="height:100vh;">
    <header>
        <div class="container">
            <div class="header__info">
                <div class="cityPlusLogo">
                    <a href="/templates/index.php"><img src="/assets/images/img/logo-01.svg" alt="Logo"></a>
                    <div class="geo">
                        <i class="bi bi-geo-alt-fill"></i>
                        <p>Екатеринбург</p>
                    </div>
                </div>
                <ul>
                    <li><a href="/templates/delivery.php">Доставка и оплата</a></li>
                    <li><a href="tel:+79126937153">+7 (912) 693-71-53</a></li>
                </ul>
            </div>
        </div>
        <hr>
        <div class="container">
            <div class="header__nav">
                <nav>
                    <ul>
                        <li><a href="menu/sets.php">Сеты</a></li>
                        <li><a href="menu/rolls.php">Роллы</a></li>
                        <li><a href="menu/bakedRolls.php">Запеченые роллы</a></li>
                        <li><a href="menu/sushi.php">Суши</a></li>
                        <li><a href="menu/noodle.php">Паста и WOK</a></li>
                        <li><a href="menu/addictionally.php">Дополнительно</a></li>
                    </ul>
                    <div class="cabinet">
                        <a href="<?php if($_SESSION['user']){echo '/templates/profile.php';}else {echo '/templates/prof.php';} ?>" class="profile profActive" id="profile">
                            <i class="bi bi-person"></i>
                        </a>
                        <div class="cart" id="cart">
                            <i class="bi bi-cart4"></i>
                            <span id="cartCount">0</span>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>

    <main id="profSession">
        <div class="container">
            <div class="prof__lett">
                <h1>Личный кабинет</h1>
                <form action="/assets/vender/profile/logout.php" method="post">
                    <button type="submit">Выйти</button>
                </form>
            </div>
            <div class="prof__wrapperMain">
                <h2>Персональная информация</h2>
                <form action="/assets/vender/profile/unpdate.php" method="post">
                    <div class="wrap">
                        <input type="text" name="userName" placeholder="Ваше имя" pattern="^[А-Яа-яЁё\s]+$" value="<?php echo $user['name']; ?>">
                        <input type="tel" name="userPhone" placeholder="Ваш номер телефона" disabled value="<?php echo $user['phone']; ?>">
                    </div>
                    <button type="submit">Сохранить изменения</button>
                    <?php echo '<p style="margin-top: 10px;">'. $_SESSION['message'].'</p>';
                    unset($_SESSION['message']); ?>
                </form>
            </div>
        </div>
    </main>

    <footer style="position: absolute; bottom: 0;">
        <hr>
        <div class="container">
            <a href="/templates/index.php"><img src="/assets/images/img/logo-01.svg" alt="Logo"></a>
            <div class="nav"> 
                <ul>
                    <li><a href="menu/sets.php">Сеты</a></li>
                    <li><a href="menu/rolls.php">Роллы</a></li>
                    <li><a href="menu/bakedRolls.php">Запеченые роллы</a></li>
                    <li><a href="menu/sushi.php">Суши</a></li>
                    <li><a href="menu/noodle.php">Паста и WOK</a></li>
                    <li><a href="menu/addictionally.php">Дополнительно</a></li>
                </ul>
            </div>
            <div class="info">
                <ul>
                    <li><a href="#">Публичная оферта</a></li>
                    <li><a href="#">Политика конфиденциальности</a></li>
                </ul>
                <div class="socials">
                    <a href="#"><i class="bi bi-instagram"></i></a>
                    <a href="#"><i class="bi bi-telegram"></i></a>
                    <a href="#"><i class="bi bi-facebook"></i></a>
                </div>
            </div>
        </div>
    </footer>
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/cart.js"></script>
</body>

</html>