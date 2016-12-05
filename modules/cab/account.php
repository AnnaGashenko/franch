<?php
$userAchievs = q("
	SELECT Icon, Name, CategoryID
	FROM Category
");

$result = q("
	SELECT UsersAchievs.CategoryID, Achievs.Icon, Achievs.Mark, Achievs.Description
	FROM UsersAchievs
	INNER JOIN Category ON UsersAchievs.CategoryID = Category.CategoryID
	INNER JOIN Achievs ON UsersAchievs.AchievsID = Achievs.AchievsID
	WHERE UsersID = '" .$_SESSION['user']['UsersID']. "'
");

$ratings = q("
	SELECT SUM(Mark) AS Ratings
	FROM UsersAchievs
	INNER JOIN Achievs ON UsersAchievs.AchievsID = Achievs.AchievsID
	WHERE UsersID = '" .$_SESSION['user']['UsersID']. "'
");

$row_ratings = $ratings->fetch_assoc();

$archives = array();

while($row_user = $result->fetch_assoc()) {
	$archives[$row_user['CategoryID']] = $row_user['Icon'];
}

