<!DOCTYPE HTML>
<html>
<head>
  <title><?php echo Core::$META['title'] = $_GET['module']; ?></title>
  <meta name="description" content="<?php echo htmlAll(Core::$META['description']); ?>">
  <meta name="keywords" content="<?php echo htmlAll(Core::$META['keywords']); ?>">
  <!--Let browser know website is optimized for mobile-->
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <meta name="description" content="Первый образовательный курс по франчайзингу в формате реалити-шоу">

  <!-- CSS  -->
  <link href="/skins/<?php echo Core::$SKIN; ?>/css/style.css" type="text/css" rel="stylesheet">
  <!--Import Google Icon Font-->
  <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <!--Import materialize.css-->
  <link type="text/css" rel="stylesheet" href="/skins/<?php echo Core::$SKIN; ?>/css/materialize.css"  media="screen,projection"/>

  <!--Import jQuery before materialize.js-->
  <script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/jquery-2.1.4.min.js"></script>
  <script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/materialize.js"></script>
  <script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/init.js"></script>
  <script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/main.js"></script>
  <noscript><span>У Вас отключён JavaScript...</span></noscript>
</head >

<body>


  <header class="container-wrap">
    <div class="header-bg" >
      <a href="/">
        <img class="responsive-img" src="/skins/default/img/head.png" width="1130" height="87">
      </a>
    </div>
  </header>
  <nav role="navigation" class="container-wrap">
    <div class="nav-wrapper">
      <ul class="left hide-on-med-and-down">
        <li><a href="#">Текущее занятие</a></li>
        <li><a href="#">Расписание</a></li>
        <li><a href="#">Рейтинги</a></li>
        <li><a href="/">Достижения</a></li>
      </ul>

      <ul id="nav-mobile" class="side-nav">
        <li><a href="#">Текущее занятие</a></li>
        <li><a href="#">Расписание</a></li>
        <li><a href="#">Рейтинги</a></li>
        <li><a href="/">Достижения</a></li>
        <?php if (!isset($_SESSION['user'])) { ?>
        <li><a href="/cab/auth">Вход</a></li>
        <?php } else { ?>
        <li><a href="/cab/account">Аккаунт</a></li>
        <?php } ?>

      </ul>
      <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>    
        
      <!-- Если сессия не существует-->
      <?php if (!isset($_SESSION['user'])) { ?>
        <?php if(!isset($status) || $status != 'OK') { ?>
        <ul class="right hide-on-med-and-down">
          <li><a href="/cab/auth">Вход</a></li>
        </ul>
        <?php } ?>
      <!-- Если сессия существует-->
      <?php } else { ?>
      <ul class="right hide-on-med-and-down">
        <li><a href="/cab/exit"><i class="large material-icons">input</i></a></li>
      </ul>
      <ul class="right hide-on-med-and-down">
        <li><a href="/cab/account">Аккаунт</a></li>
      </ul>
      <?php } ?>
    </div>
  </nav>


  <main class="container-wrap">
      <?php echo $content; ?>
  </main>


</body>
</html>