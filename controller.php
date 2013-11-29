<?php
require_once("include/Database.php");
$connection = new Database();

if(isset($_GET['init'])):
	switch($_GET['init']):
		case "hero":
			if(isset($_GET['id'])):
				echo $connection->GetHero($_GET['id']);
			else:
				echo $connection->GetAllHeroes();
			endif;
			break;
		case "mob":
			if(isset($_GET['id'])):
				echo $connection->GetMob($_GET['id']);
			else:
				echo $connection->GetAllMobs();
			endif;
			break;
	endswitch;
endif;
?>