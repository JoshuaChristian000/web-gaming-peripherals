<?php 
session_start();
include ('head/header.php');
include ('navbar/navbar.php');

?>
<body>
<div class="container p-3"> 
    <title>Contact Us</title>
    <h2 class="text-center">Contact Us</h2>
</div>    

<div class="container">   

    <form action="" class="form1" enctype="multipart/form-data" method="POST">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Full Name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Example@gmail.com" name="email">
    </div>
    <div class="form-group">
    <label for="message">Message</label>
    <textarea class="form-control" id="message" rows="3" placeholder="Message"></textarea>
  </div>
    <div class="form-group">
    <button type="button" class="btn btn-primary" id="submitBtn">Submit</button>
    </div>
    </form>
    <span id="output"></span>

</div>
<script>
$(document).ready(function(){

$("#submitBtn").click(function(e){
  
 
  var form = $('#form1')[0];
  var data = new FormData(form);
  var name = $("#name").val();
  var email = $("#email").val();
  var message = $("#message").val();

  $.ajax({
        data: {
            name: name,
            email: email,
            message: message,
        },
        dataType: "json",
        type: "post",
        enctype: 'multipart/form-data',
        url:  "./config/sendContact.php",
        //data : $("#form1").serialize(),
        success: function(data){
            // $("#form1")[0].reset;
    
                alert("Thankyou for Contacting Us");
               
        },
            error: function (e) {
 
                alert("ERROR");
 
            }
     
    });
    e.preventDefault();
});

});
</script>
</body>
<?php 
include ('footer/footer.php');
?>
</html>
