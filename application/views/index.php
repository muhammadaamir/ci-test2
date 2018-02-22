<!DOCTYPE html>
<html>
<head>
	<title>123</title>
</head>
<body>
	<a href="welcome/get_top_users">Top 10 users</a>
	<h1>Form</h1>
	<form action="<?php echo base_url().'welcome/index_post'; ?>" method="POST">
		User Name: <input type="text" id="user_name" name="user_name"><br>
		User Email: <input type="text" id="user_email" name="user_email"><hr>

		<?php 
			foreach ($questions as $key => $value) {
				// echo $value->id."<br>";
		?>
			<?php echo $key+1; ?> Quesrtion: <?php echo $value->question; ?><br>
			<input type="text" id="answer_by_user[]" name="answer_by_user[]">
			<input type="hidden" id="qusetion_id[]" value="<?php echo $value->id; ?>" name="qusetion_id[]">
			<input type="hidden" id="answer_by_db[]" value="<?php echo $value->answer; ?>" name="answer_by_db[]">
			<input type="hidden" id="category_id[]" value="<?php echo $value->category_id; ?>" name="category_id[]"><hr>

		<?php
			}
				// echo "<pre>";
		  //       print_r($questions);
        ?>
        <input type="submit" value="submit">
	</form>
</body>
</html>