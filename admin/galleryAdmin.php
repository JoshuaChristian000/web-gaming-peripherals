<?php 
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php 
        include ('../navbar/navbarAdmin.php');
        include ('../config/dbconfig.php');
        include ('../head/header.php');
        
        $sql = "SELECT * FROM gallery";
        $result = $conn->query($sql);
    ?>
    <!-- <script src="../js/JqueryBerita.js"></script> -->

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Gallery</title>
</head>
<body>
<div class="container card mt-2 mb-2">
<h3 class="text-center pt-2">Admin Gallery</h3>

<button type="button" class="btn btn-primary mt-2 mb-2" data-toggle="modal" data-target="#Modal" id="create">
  Create
</button>

<table class="table" id="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Judul Gambar</th>
      <th scope="col">gambar</th>
      <th scope="col">Action</th>
	 
    </tr>
  </thead>
  <tbody class="text-justify" id="tbody">

</tbody>
</table>
</div>
<script>
$(document).ready(function(){

$("#create").click(function(e){
$('#galleryForm').trigger("reset");
$('#exampleModalLabel').html("Add New Picture");

});

$.ajax({    
        type: "GET",
        url: "readGallery.php",             
        dataType: "html",                  
        success: function(data){                 
            $("#tbody").html(data); 
            
        }
    });

$('body').on('click','.edit',function(){
  //alert('hi');
  var id = $(this).attr("id");
  //console.log(id);
  $.ajax({
        data: {
          id:id,
        },
        dataType: "json",
        type: "post",
        url:  "editGallery.php",

        success: function(data){
            $("#Modal").modal('show');
            $("#exampleModalLabel").html('Edit Data');
            $('#id').val(id);
            $('#judul_gambar').val(data.judul_gambar);
            $('#gambar').val(data.gambar);  
        },
            error: function (e) {
 
                alert("ERROR : ", e);
 
            }
     
    });
 
});

$('#galleryForm').on('submit',function(e){
  $.ajax({
        data: new FormData(this),
        dataType: "json",
        type: "post",
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        url:  "insert-updateGallery.php",

        success: function(data){
          alert("SUCCESS UPDATE");
          window.location.reload();
        },
            error: function (e) {
 
                alert("ERROR : ", e);
 
            }
     
    });
  
  
  
 
});

$('body').on('click', '.delete', function() {
            if (confirm("Delete Record?") == true) {
                var id = $(this).attr('id');
                // ajax
                $.ajax({
                    type: "POST",
                    url: "deleteGallery.php",
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(res) {
                        $('#id').val(id);
                        $('#judul_gambar').val(res.judul_gambar);
                        $('#gambar').val(res.gambar);
                        window.location.reload();
                    }
                });
            }
        });
});



</script>
</body>
</html>
<!-- Modal -->
<div class="modal fade" id="Modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">

        
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Create</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form id="galleryForm" enctype="multipart/form-data" method="POST" action="javascript:void(0)">
      <input type="hidden" name="id" id="id" value="" />
      <div class="form-group">                            
            <label>Judul Gambar</label>                             
            <input type="text" id="judul_gambar" name="judul_gambar" class="form-control" required>                         
        </div>                                                  
        <div class="form-group">                             
             <label>Gambar</label>                             
            <input type="file" id="gambar" name="gambar" class="form-control" required>                         
        </div>
        
      </div>
      <div class="form-group modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-primary" value="createBtn">Submit</button>
      </div>
      </form>
    </div>
  </div>
</div>