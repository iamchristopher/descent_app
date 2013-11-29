<?php
class Database extends mysqli {
	public function __construct() {
		@parent::__construct('localhost', 'root', '', 'db_mobile_app');

		if(mysqli_connect_error()):
			throw new Exception("An error occurred while attempting to connect to the database.");
		endif;
	}

	private function select($query) {
		$results = mysqli_query($this, $query);
		
		if(!$this->error and $results->num_rows > 0):
			while($resultSet[] = mysqli_fetch_object($results));
			array_pop($resultSet);
			return json_encode($resultSet);
		else:
			$response = ($results->num_rows == 0) ? "No results returned!" : $this->error;
			return '{"error":true, "message":"' . $response . '"}';
		endif;
	}

	public function GetAllHeroes() {
		$q_hero = "SELECT hero_ID ID, hero_name Name
			FROM tbl_hero
			ORDER BY hero_name DESC";

		return $this->select($q_hero);
	}

	public function GetHero($hero_ID = 1) {
		$q_hero = "SELECT hero_name Name, hero_image Image, hero_bio Biography, hero_health Health, hero_speed Speed, hero_stamina Stamina, hero_defense Defense, hero_might Might, hero_knowledge Knowledge, hero_willpower Willpower, hero_awareness Awareness
			FROM tbl_hero
			WHERE hero_ID = {$hero_ID}";

		return $this->select($q_hero);
	}

	public function GetAllMobs() {
		$q_hero = "SELECT mob_ID ID, mob_name Name
			FROM tbl_mob
			ORDER BY mob_name DESC";

		return $this->select($q_hero);
	}

	public function GetMob($mob_ID = 1) {
		$q_hero = "SELECT mob_name Name, mob_image Image, mob_bio Biography, mob_health Health, mob_speed Speed, mob_defense Defense, mob_m_health MHealth, mob_m_speed MSpeed, mob_m_defense MDefense
			FROM tbl_mob
			WHERE mob_ID = {$mob_ID}";

		return $this->select($q_hero);
	}
}