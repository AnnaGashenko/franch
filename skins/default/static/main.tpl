<div class="section font-kelson">
    <div class="row">
        <div class="col s12 center">
            <h4>Достижения, которые можно получить на курсе</h4>
        </div>

        <div class="col s12">
            Мы придумали систему мотивации участников курса, чтобы обучение было не только полезным, но и веселым.
            Смотрите занятия, участвуйте в обсуждениях в зале или в чате занятия, задавайте вопросы и выполняйте домашнюю работу.
            За вашу активность на курсе вы будете получать баллы.
            Выйдите в тройку лидеров, чтобы получить крутые призы после прохождения курса.
        </div>
    </div>
</div>

<?php
/*
 Вытягиваем в массив $cat все награды и их описания по категориям
Array
(
    [0] => Array
        (
            [Mark] => 100
            [Description] => Вы заполнили анкету курса
            [Icon] => /skins/default/img/achievs/1_simply.png
            [CategoryID] => 1
            [Name] =>
        )
    [1] => Array
        (
            [Mark] => 200
            [Description] => Вы выполнили 2 домашних работы вовремя и получили за них суммарно не менее 150 баллов.
            [Icon] => /skins/default/img/achievs/2_bronze.png
            [CategoryID] => 2
            [Name] => бронза
        )
)
*/

$cat = array();
$i = 0;
while($row = $res->fetch_assoc()){
    $cat[$i]['Mark'] = $row['Mark'];
    $cat[$i]['Description'] = $row['Description'];
    $cat[$i]['Icon'] = $row['Icon'];
    $cat[$i]['CategoryID'] = $row['CategoryID'];
    $cat[$i]['Name'] = $row['Name'];
    ++$i;
}
/*
* foreach($cat_id as CategoryID => Name)
*/
foreach($cat_id as $k => $v){
    echo '<div class="section" id="table-achievs">';
    echo '<div class="row">';
    echo '<div class="col s12 m10 offset-m2">';
    echo '<table class="font-kelson">';
    echo '<thead><tr><th data-field="id" colspan="3" class="center"><h5>'.$v.'</h5></th></tr><thead>';
    foreach ($cat as $value) {
    /* $value =
            Array
            (
                [Mark] => 100
                [Description] => Вы заполнили анкету курса
                [Icon] => /skins/default/img/achievs/1_simply.png
                [CategoryID] => 1
                [Name] =>
            )
    */
      // if(1 == 1)
      if($k == $value['CategoryID']){
        echo '<tbody><tr>';
        echo '<td width="100" class="center achievs-icon"><span>'.$value['Name'].'</span><br><img src="'.$value['Icon'].'"></td>';
        echo '<td width="100" class="center orange-text">'.$value['Mark'].'</td>';
        echo '<td>'.$value['Description'].'</td>';
        echo '</tr></tbody>';   
      } 
    }
    echo '</table>'; 
    echo '</div>';
    echo '</div>';
    echo '</div>'; 
}
?>