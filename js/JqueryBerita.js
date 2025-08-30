// $(document).ready(function() {
//     var form_data = new FormData();
//     $('#submit').on('click',function(e){
//         $.ajax({
//             url:"../config/save.php",
//             method:"POST",
//             data: form_data,
//             contentType: false,
//             cache: false,
//             processData: false,  
//             success:function(data)
//             {
//              console.log(data);
//             }
//            });
//     })
    

// });  

// $(document).ready(function(){

//     $("#createBtn").click(function(e){
      
//     $('#exampleModalLabel').html("Add New User");
    
//     });
//     var form = $('#idBerita')[0];
//     var data = new FormData(form);
//     // var judul = $("#judul").val();
//     // var sinopsis = $("#sinopsis").val();
//     // var isi = $("#isi").val();
//     $("#idBerita").submit(function(e){
//       $.ajax({
//             data: $(this).serialize(),
//             dataType: "json",
//             type: "post",
//             enctype: 'multipart/form-data',
//             url:  "../config/save.php",
//             //data : $("#form1").serialize(),
//             success: function(data){
//                 alert(data);
//                 // $("#form1")[0].reset;
        
//                     alert("SUCCESS : ", data);
                   
//             },
//                 error: function (e) {
     
//                     alert("ERROR : ", e);
     
//                 }
         
//         });
//         e.preventDefault();
//     });
// });
