<?php session_start(); require_once '../assets/vender/connect.php';?>
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

<body style="height: 98vh !important;">
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
                    <li><a href="#" class="active">Доставка и оплата</a></li>
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
                        <a href="<?php if($_SESSION['user']){echo '/templates/profile.php';}else {echo '/templates/prof.php';} ?>" class="profile" id="profile">
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

    <main>
        <section class="del">
            <h1>Условия доставки</h1>
            <p><br></p>
            <p><strong>Доставляем</strong> любимые блюда ⏰<strong style="color: rgb(230, 0, 0);">КРУГЛОСУТОЧНО</strong><strong> </strong>по городу Екатеринбургу!</p>
            <p><br></p>
            <p>Пункты<strong> самовывоза</strong> работают с <strong>11.00</strong> до <strong>23.00</strong>.</p>
            <p><br></p>
            <p>ЛЮБЫЕ индивидуальные условия или районы доставки можно обсудить с оператором по телефону:&nbsp;</p>
            <p>363-07-07</p>
            <p><br></p>
            <p>Время доставки оговаривается с оператором.</p>
            <p><br></p>
            <p><strong>Стоимость доставки по зонам:</strong></p>
            <p><br></p>
            <p>По городу <strong>от 450 руб. (с учетом скидки)</strong> - <strong
                    style="color: rgb(230, 0, 0);">Бесплатно</strong></p>
            <p><br></p>
            <p>Верхняя Пышма, Среднеуральск, Пос.Садовый, Балтым, Шувакиш <strong>от 700 руб. (с учетом скидки)</strong> -
                <strong style="color: rgb(230, 0, 0);">Бесплатно</strong></p>
            <p><br></p>
            <p>Химмаш, Компрессорный, Птицефабрика, Кольцово, Рудный, Коптяки, Зеленый Бор, Кирпичный, Залесье <strong>от
                    850 руб. (с учетом скидки)</strong> - <strong style="color: rgb(230, 0, 0);">Бесплатно</strong></p>
        </section>
    </main>

    <footer id="footDel"  style="position:relative !important; margin-top: 90px;">
        <hr>
        <div class="container">
            <a href="/templates/index.php"><img src="/assets/images/img/logo-01.svg" alt="Logo"></a>
            <div class="nav">
                <ul>
                    <li><a href="../menu/sets.php">Сеты</a></li>
                    <li><a href="../menu/rolls.php">Роллы</a></li>
                    <li><a href="../menu/bakedRolls.php">Запеченые роллы</a></li>
                    <li><a href="../menu/sushi.php">Суши</a></li>
                    <li><a href="../menu/noodle.php">Паста и WOK</a></li>
                    <li><a href="../menu/addictionally.php">Дополнительно</a></li>
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
    <script src="/assets/js/cart.js"></script>
</body>

</html>