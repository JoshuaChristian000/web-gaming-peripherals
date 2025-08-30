<!DOCTYPE html>
<html lang="en">
<?php
include ('head/header.php');
include ('config/dbconfig.php');
include ('navbar/navbar.php');

?>
<body>
<div class="container-fluid p-5 bg-light ">
	<div class="container">
			<h3 class="text-center p-3">Register Page</h3>
				<form method="POST" action="./process/regisProc.php" class="border border-dark p-5">
					<div class="form-group mt-2">
						<label>Email</label>
						<input type="email" placeholder="example@email.com" class="form-control " name="email">
					</div>
					<div class="form-group mt-2">
						<label>Password</label>
						<input type="password" placeholder="password" class="form-control " name="password">
					</div>
					<input type="submit" class="btn btn-primary mt-3" value="submit">
			    </form>			
	</div>
</div>
</body>
<?php 
include ('footer/footer.php');
?>
</html>
