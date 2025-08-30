<?php
include ('head/header.php');
include ('config/dbconfig.php');
include ('navbar/navbar.php');

?>


<div class="container">

<div class="row">
        <div class="col-lg-12 pt-5">
            <?php
            $id = $_GET["id"];
            $sql = "SELECT * FROM berita WHERE id='$id'";		
            $result = mysqli_query($conn, $sql);
            $table = mysqli_fetch_assoc($result);
            if(is_null($table)){
            ?>
            <div class="blog-single-wrap">
            <div class="header">
            <h1 class="post-title">Data Not Found</h1>
            <a href="berita.php" class="btn btn-danger" type="button">Back</a>
            </div>
            <?php
            }
            else 
            {
                if(isset($_GET["id"])== $id){
               
                //var_dump($id);
            ?>
          <div class="blog-single-wrap">
          <div class="header">
          <h1 class="post-title text-center m-3 p-3"><?php echo $table["judul"]?></h1>
              <div class="post-thumb">
                <img src="./Pictures/<?php echo $table["gambar"]?>" alt="" class="w-100 border border-dark">
              </div>
              
          </div>
            
            
            <div class="post-content pt-3 text-justify m-3 p-3 border rounded-5 border-dark">
            <?php echo $table["isi"]?>
            </div>
          </div>

          <?php
                }
                
            }
          ?>
        </div>
        
      </div>

</div>
<?php 
include ('footer/footer.php');
?>