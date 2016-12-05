<!-- Личный кабинет пользователя -->
<div class="row">
  <div class="col s12">
    <h4 class="font left red-text"><?= $_SESSION['user']['Name'] ;?></h4>
  </div>
</div>

<div class="row">

  <div class="col s12 m2 avatar ">
    <img class="circle responsive-img" src="<?php echo $_SESSION['user']['Avatar'] ;?>">
  </div>

  <div class="col s12 m2">
    <p class="grey-text"><?php echo $_SESSION['user']['Country'].', '.$_SESSION['user']['City'] ;?></p>
    <p><?php echo $_SESSION['user']['Format'] ;?></p>
    <p><a class="red-text edit" href="#">редактировать</a></p>
  </div>  

  <div class="col s12 m3 center ratings-wrap  red-text">
    <p class="grey-text no-margin-bottom">Текущий рейтинг</p>
    <div class="row no-margin">
      <div class="col s12">
        <p class="ratings red-text"><?= $row_ratings['Ratings'] ?></p>
      </div>
    </div>

    <div class="row" height="40">
      <div class="col s12 no-margin">
        <span class="star med"></span>
        <span class="star med"></span>
        <span class="star med"></span>
        <span class="star med"></span>
       </div>
    </div> 
  </div>

  <div class="col s12 m5 left">
    <p class="grey-text">Достижения</p>
    <?php while($row = $userAchievs->fetch_assoc()) { ?>
      <div class="tooltipped img-achievs" data-position="top" data-delay="50" data-tooltip="<?= $row['Name']?>">      
        <img src="<?php echo ((array_key_exists($row['CategoryID'], $archives)) ? $archives[$row['CategoryID']] : $row['Icon']); ?>">
      </div> 
    <?php } ?>
  </div>
</div>