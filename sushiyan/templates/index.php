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

<body>
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
                        <a href="<?php if($_SESSION['user']){echo '/templates/profile.php';}else {echo '/templates/prof.php';} ?>"
                            class="profile" id="profile">
                            <i class="bi bi-person"></i>
                        </a>
                        <div class="cart" id="cart">
                            <i class="bi bi-cart4"></i>
                            <span id="cartCount">0</span>
                            <div class="cartModal" id="cartModal">
                            <div class="cartInfo" id="cartInfo">
                                <!-- <div class="prod"></div> -->
                                <div class="infoOfCart">
                                    <div class="cont">
                                        <h3 id="priceOfProd">0</h3>
                                    </div>
                                    <form action="/templates/cart.php" method="get">
                                        <button>Перейти в корзину</button>    
                                    </form>
                                </div>
                            </div>
                        </div>
                        </div>
                        
                    </div>
                </nav>
            </div>
        </div>
    </header>

    <section class="slider">
        <div class="container">
            <div class="slider__wrapper">
                <div class="slider__items">
                    <a href="/templates/delivery.php"><img src="https://s3.smartofood.ru/fishka96_ru/images/25c2ba87-afa8-474f-9ffe-64736dbfbbbc.jpg" alt="image"></a>
                    <a href="#"><img src="https://s3.smartofood.ru/fishka96_ru/images/f3962343-cf2b-4703-8e42-2e856fa83127.png" alt="image"></a>
                </div>
            </div>
            <div class="slider__controls">
                <button type="button" id="prev" class="slider__control"><i class="bi bi-caret-left"></i></button>
                <button type="button" id="next" class="slider__control"><i class="bi bi-caret-right"></i></button>
            </div>
        </div>
    </section>

    <main class="rec">
        <div class="container">
            <h2>Рекомендуем</h2>
        </div>
        <div class="container" id="grid-wrap">
            <?php 
            $cardsConnect = mysqli_query($connect, "SELECT * FROM `recomendations`");
            $cardsCount = mysqli_num_rows($cardsConnect);
            for($i = 1; $i<=$cardsCount; $i++){
                $cardsCon = mysqli_query($connect, "SELECT * FROM `recomendations` WHERE `id` = '$i'");
                $card = mysqli_fetch_assoc($cardsCon);
                echo '
                    <div class="cards" data-id="'.$card['id'].$card['weight'].$i.'">
                        <div class="img">
                            <img src="'.$card['img_url'].'" alt="'.$card['title'].'">
                        </div>
                        <div class="cardInfo">
                            <h3 class="title">'.$card['title'].'</h3>
                            <p class="weight">'.$card['weight'].' гр.</p>
                            <p class="description">'.$card['description'].'</p>
                            <div class="form">
                                <h3 class="price">'.$card['price'].' Р</h3>
                                <button type="button" data-addToCart data-counter="1" data-id="'.$card['id'].$card['weight'].$i.'">+</button>
                            </div>
                        </div>
                    </div>
                ';
            } 
        ?>
        </div>
    </main>

    <footer>
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

    <!-- js -->
    <script src="/assets/js/cart2.js"></script>
    <script src="/assets/js/cart.js"></script>
    <script src="/assets/js/script.js"></script>
    <script src="/assets/js/slider.js"></script>
</body>

</html>