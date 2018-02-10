<form action="" method="post">
	<input type="text" name="prime"></input>
</form>

<?php

	$number = $_POST['prime'];

	$div1 = 2;

	//Safety net is to be used if made available on public net
	$count = 0;
	$limit = 999;

	while($count < $limit){
		if($number % $div1 == 0){
			echo "$number is not prime!!!";
			break;
		}else if($div1 < $number/2){
			$div1++;
			$count++;
		}else{
			echo "$number is prime!!!";
			break;
		}
	}

	die();

?>
