<script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/registration.js"></script>
<div class="row">
<!--Если пользователь не зарегестрировался выводим форму-->
<?php if(!isset($_SESSION['regok'])) { ?>

  <div class="col s6 offset-s3">
    <form id="registration" class="form-container" action="" method="post">
      <div class="color-grey center"><h4>Регистрация</h4></div>
      <br />
      <div>Имя и фамилия: *</div>
      <input name="FName" type="text" placeholder="введите имя и фамилию" value="<?php echo @htmlspecialchars($_POST['FName']); ?>" required>
      <div class="red-text"><?php echo @$errors['FName']; ?></div>
      <br >

      <div>E-mail *</div>
      <input name="email" type="email" placeholder="введите email" value="<?php echo @htmlspecialchars($_POST['email']); ?>" required>
      <div class="red-text"><?php echo @$errors['email']; ?></div>
      <br >

      <div>Страна</div>
      <input name="country" type="text" placeholder="введите страну" value="<?php echo @htmlspecialchars($_POST['country']); ?>">
      <div class="red-text"><?php echo @$errors['country']; ?></div>
      <br >

      <div>Город</div>
      <input name="city" type="text" placeholder="введите город" value="<?php echo @htmlspecialchars($_POST['city']); ?>">
      <div class="red-text"><?php echo @$errors['city']; ?></div>
      <br>

      <div class="row">
        <div class="col s12 m6">
          <input class="with-gap" name="format" id="test1" type="radio" value="online" checked />
          <label for="test1">Онлайн</label>
        </div>

        <div class="col s12 m6">
          <input class="with-gap" name="format" id="test2" type="radio"  value="live" />
          <label for="test2">Живое участие в Киеве</label>
        </div>
      </div>
      <br>
      <div class="submit-container">
        <input class="btn" type="submit" name="sendreg" id="submit" value="Отправить">
      </div>
      <div class="row">
          <div class="error_login center" class="col s12"></div>
      </div>
    </form>
  </div>

<!--Иначе, если пользователь  зарегестрировался выводим сообщение и делаем переадресацию-->
<!--Удаляем сесию после переадресации и снова выводится форма-->
<?php } else { ?>
  <div class="col s8 offset-s2">
    <h5>Добрый день!</h5>
    <p>
      Спасибо за регистрацию на платформе курса «Франшиза: Рождение Легенды».
    </p>
    <p>
      Занятия проходят каждую среду с 19:00 до 22:00 (по Киеву и Москве). Вы можете посещать занятия лично (в Киеве) или смотреть онлайн.
    </p>
    <p>Для входа на платформу, пожалуйста, используйте следующие данные:</p>
    <p>
      Ссылка для входа — <a href="/cab/auth">franch/cab/auth</a>
      <br />
      Ваш email — <?php echo $_SESSION['regok']['email'];?>
      <br />
      Ваш пароль — <?php echo '<strong>'.$_SESSION['regok']['password'].'</strong>' ?>
    </p>
    <p>
    Адрес для личного посещения на курсе: Киев, ул. Вадима Гетьмана, 1в, 3-й этаж, Olympic Hall. Важно: прийти нужно заранее, чтобы успеть зарегистрироваться и получить бейдж. Зал будет открыт каждую среду с 18:30. Если у вас еще нет бейджа, нужно будет зарегистрироваться на месте и получить бейдж. Начало программы ровно в 19:00.
    </p>
    <p>
    Трансляии и живое участие в зале бесплатны, благодаря спонсору проекта — франшизе «Крылья».
    </p>
    <p>
      <strong>План курса и раписание занятий</strong> можно найти на платформе, а также по ссылке: 
      <a href="https://goo.gl/LFh8wX">https://goo.gl/LFh8wX</a>
    </p>
    <p>
      С уважением,
      Команда проекта «Франшиза: Рождение Легенды»
    </p>
  </div>
<?php unset($_SESSION['regok']); } ?>
</div>