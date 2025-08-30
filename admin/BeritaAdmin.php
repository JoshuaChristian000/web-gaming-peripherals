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
        
    ?>
    <!-- <script src="../js/JqueryBerita.js"></script> -->

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Berita</title>
</head>
<body>
<div class="container-fluid">
<h3 class="text-center pt-2">Admin Berita</h3>

<button type="button" class="btn btn-primary mb-2" data-toggle="modal" data-target="#Modal" id="create">
  Create
</button>

<table class="table" id="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">#</th>
      <th scope="col">Judul</th>
      <th scope="col">Sinopsis</th>
      <th scope="col">Isi</th>
	    <th scope="col">Gambar</th>	
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
$('#idBerita').trigger("reset");
$('#exampleModalLabel').html("Add New User");

});

$.ajax({    
        type: "GET",
        url: "readBerita.php",             
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
        url:  "edit.php",

        success: function(data){
            $("#Modal").modal('show');
            $("#exampleModalLabel").html('Edit Data');
            $('#id').val(id);
            $('#judul').val(data.judul);
            $('#sinopsis').val(data.sinopsis);
            $('#isi').val(data.isi);
            $('#gambar').val(data.gambar);  
        },
            error: function (e) {
 
                alert("ERROR : ", e);
 
            }
     
    });
 
});

$('#idBerita').on('submit',function(e){
  $.ajax({
        data: new FormData(this),
        dataType: "json",
        type: "post",
        enctype: 'multipart/form-data',
        processData: false,
        contentType: false,
        url:  "insert-update.php",

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
                    url: "deleteBerita.php",
                    data: {
                        id: id
                    },
                    dataType: 'json',
                    success: function(res) {
                        $('#id').val(id);
                        $('#judul').val(res.judul);
                        $('#sinopsis').val(res.sinopsis);
                        $('#isi').val(res.isi);
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
      <form id="idBerita" enctype="multipart/form-data" method="POST" action="javascript:void(0)">
      <input type="hidden" name="id" id="id" value="" />
      <div class="form-group">  
                                     
            <label>Judul</label>                             
            <input type="text" id="judul" name="judul" class="form-control" required>                         
        </div>                         
            <div class="form-group">                             
                <label>Sinopsis</label>                             
                <input type="text" id="sinopsis" name="sinopsis" class="form-control" required>                         
            </div>                        
            <div class="form-group">                             
                <label>Isi</label>                             
                <input type="text" id="isi" name="isi" class="form-control" required>                         
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
