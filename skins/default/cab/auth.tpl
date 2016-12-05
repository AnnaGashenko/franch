<!--АВТОРИЗАЦИЯ-->
<script type="text/javascript" src="/skins/<?php echo Core::$SKIN; ?>/js/authorization.js"></script>
<div class="row">
  <div class="col s6 offset-s3 center">
    <h5>Авторизация</h5>
    <div>или <a class="red-text text-darken-2" href="/cab/registration">регистрация</a></div>
  </div>
  <div class="col s6 offset-s3">
    <form id="authorization" method="post" class="col s12">
      <div class="row">
        <div class="input-field col s12">
          <input id="email" type="email" name="email" class="validate" required>
          <label for="email">Email*</label>
        </div>
      </div>

      <div class="row">
        <div class="input-field col s12">
          <input id="password" type="password" name="pass" class="validate" required>
          <label for="password">Password*</label>
        </div>
      </div>

      <div class="row">
        <div class="error_login center" class="col s12">Неверный логин или пароль</div>
      </div>

      <button class="btn" type="submit">Вход</button>
    </form>
  </div>
</div>
