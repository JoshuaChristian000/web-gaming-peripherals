<?php
include ('head/header.php');
include ('config/dbconfig.php');
include ('navbar/navbar.php');

?>

<title>Login Admin</title>


<div class="container bg-secondary">
	<div class="row border border-dark pt-5 pb-5">
		<div class="offset-4 col-4 mt-2 text-white">
			<h3>Login Page</h3>
				<form method="POST" action="./process/loginProc.php">
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
</div>

<?php 
include ('footer/footer.php');
?>

<script>
      $(document).ready(function(){
          setTimeout(function() {
              <?php
              if( $_GET['status'] == 'success') {
                  echo 'alert("Register Success");';
              }
              else{
                  echo 'alert("Register Failed");';
              }
              ?>
              }, 500);
      });
  </script>
