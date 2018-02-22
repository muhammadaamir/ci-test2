<!DOCTYPE html>
<html>
<head>
	<title>123</title>
</head>
<body>
	<h1>Top 10 users</h1>
		<?php
			foreach ($top_users as $key => $value) {
				$sql ="SELECT * FROM users where id = ".$value->user_id;
				$query = $this->db->query($sql);
				$res   = $query->result();
		?>
				User Name: <?php echo $res[0]->name ?> <br>
				User Email: <?php echo $res[0]->email ?> <br>
				Score: <?php echo $value->score; ?><br>
				<hr>
		<?php
			}
        ?>
</body>
</html>