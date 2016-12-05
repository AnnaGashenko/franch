<?php
$res = q("
	SELECT Achievs.Mark, Achievs.Description, Achievs.Icon, Category.Name, Achievs.CategoryID, StatusIcon.Name
	FROM Achievs
	INNER JOIN Category ON Achievs.CategoryID=Category.CategoryID
	LEFT JOIN StatusIcon ON Achievs.StatusID = StatusIcon.StatusID
	ORDER BY Achievs.CategoryID
");

$category = q("
	SELECT CategoryID, Name
	FROM Category
");

$cat_id = array();

while($row = $category->fetch_assoc()){
	$cat_id[$row['CategoryID']] = $row['Name'];
}
