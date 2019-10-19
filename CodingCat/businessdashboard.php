<?php
include("loginCheck.php");
  if( $_SESSION['UserType'] != 'pmanager') {
       header("Location: index.php"); 
       exit();
   }
    //$user = "rahatos";
?>

<?php include("header.php"); ?>

<!DOCTYPE>
<html>
    <head>
                  <link href="css/dashboard.css" rel="stylesheet">
   
    </head>

    <body>

        <?php include("includes/navbar.php"); ?>
        

                
    <section style="background:white;">
               <div class="container">
                   <div class="row">
                       <h4 class="display-4 py-4"><strong>Dashboard</strong></h4>
                   </div>
               </div>
          
        </section>
        
        <section >
               <div class="container light-theme">
                   <div class="row">
                          <p class="py-5"> Hello, Mr. <?php echo $user ?>!! Looking to hire some talents? </p>
                   </div>
            </div>
               
            <div class="container">
            <div class="row">
              <div class="text-center">
                <img  src="images/a7dc08191db7a267df67e1dcfe5036e81.png" alt="Card image cap" style="max-width: 100%;">
                  <a href="camera.php" class="btn btn-primary btn-success my-5">Take Interview</a>
                </div>
                
                    
                  
                
            </div>
            </div>
            




        
             
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    </body>

  
</html>