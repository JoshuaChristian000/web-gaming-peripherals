<?php
include ('head/header.php');
include ('config/dbconfig.php');
include ('navbar/navbar.php');



?>
<link rel="stylesheet" href="css/galleryCss.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/jquery.magnific-popup.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">

<body>
<title>Gallery</title>
    <div class="container-fluid pt-5">
    <div class="section">
      <div class="inner-width">
        <h2 class="text-center font-weight-bold pb-3">Gallery</h2>
        
          <div class="gallery border mb-5">

            <?php
            $sql='select * from gallery';
            $result = mysqli_query($conn,$sql);
            while($row=mysqli_fetch_assoc($result)){
            $judul = $row['judul_gambar'];
            $foto = $row['gambar'];
            //$link = $row['link'];
             ?>



            <a href="Gallery/<?php echo $foto;?>" class="image">
              <img src="Gallery/<?php echo $foto;?>" alt="" class="rounded border-dark" >
            </a>




            <?php } ?>
          </div>
      
      </div>

    </div>
    <script  src="js/gallery.js" type="text/javascript"></script>
    </div>
</body>




<?php 
include ('footer/footer.php');
?>



