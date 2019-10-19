<?php
    include("loginCheck.php");
    if( $_SESSION['UserType'] != 'psetter') {
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
                          <p class="py-5"> HOWDY, <?php echo $user ?>!! What's you upto? </p>
                   </div>
            </div>
               
            <div class="container">
            <div class="card-deck">
              <div class="card text-center">
                <img class="card-img-top" src="images/writer-02_2x.png" alt="Card image cap">
                <div class="card-body">
                 
                    <a href="problemset.php" class="btn btn-primary btn-success">ADD PROBLEMS</a>
                  
                </div>

              </div>
                
              <div class="card text-center">
                <img class="card-img-top" src="images/writing.png" alt="Card image cap">
                <div class="card-body">

                    <a href="#" class="btn btn-primary btn-success">ADD ASSESSMENT TESTS</a>
                    
                </div>
              </div>
              <div class="card text-center">
                <img class="card-img-top" src="images/beebenchdrbl.jpg" alt="Card image cap">
                <div class="card-body">

                    <a href="#" class="btn btn-primary btn-danger">UPDATE/DELETE EXISTING PROBLEMS</a>
                
                </div>
              </div>
            </div>
                
           </div>
          
        </section>
        
        <section >
               <div class="container light-theme">
                   <div class="row">
                          <p class="py-5"> We all know how hard you work , <?php echo $user ?>!! So here's a cat photo to cheer you up. ^ ^ </p>
                   </div>
            </div>
               
            <div class="container">
            <div class="card-deck">
              <div class="card text-center">
                <img class="card-img-top" src="images/20170619_drib_cindysuen_busy.gif" alt="Card image cap">
                <div class="card-body">
                 
                    <a href="#" class="btn btn-primary btn-success">GIVE UP ON LIFE</a>
                  
                </div>

              </div>
                </div></div></section>
        
        
        
        
             
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
    </body>

  
</html>