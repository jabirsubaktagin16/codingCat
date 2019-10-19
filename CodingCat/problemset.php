<?php
    function validateFormData( $formData ) {
        $formData = trim( stripslashes( htmlspecialchars( $formData ) ) );
        return $formData;
    }
   include("loginCheck.php");
    session_start();
    $user = $_SESSION['loggedInUser'];
    //$user = "rahatos";
    $row = [];


    $problem_name = $max_score = $difficulty = $description = $input_format = $output_format = $constrains = $sample_input = $sample_output = $notes = $test_cases = $test_case_output = "";

   if( isset( $_POST['setQuestion'] ) ) {
    
    // connect to database
    include('connection.php');
    
     $problem_name          = validateFormData($_POST['problem_name']);
     $category              = validateFormData($_POST['category']);
     $max_score             = validateFormData($_POST['max_score']);
     $difficulty            = validateFormData($_POST['difficulty']);
     $description           = validateFormData($_POST['description']);
     $input_format          = validateFormData($_POST['input_format']);
     $output_format         = validateFormData($_POST['output_format']);
     $constrains            = validateFormData($_POST['constrains']);
     $sample_input          = validateFormData($_POST['sample_input']);
     $sample_output         = validateFormData($_POST['sample_output']);
     $notes                 = validateFormData($_POST['notes']);
     $test_cases            = validateFormData($_POST['test_cases']);
     $test_case_output      = validateFormData($_POST['test_case_output']);

    
    // create SQL query
      $query = "INSERT INTO algorithms (problem_name,category, max_score, difficulty, description, input_format, output_format, constrains,sample_input, sample_output, notes, test_cases, test_case_output) VALUES ('$problem_name', '$category', '$max_score', '$difficulty', '$description', '$input_format','$output_format','$constrains','$sample_input','$sample_output','$notes','$test_cases','$test_case_output')";

            
        if( mysqli_query( $conn, $query ) ) {
                    header("Location: psdashboard.php");
                } else {
                    echo "Error: ". $query . "<br>" . mysqli_error($conn);
                }

            mysqli_close($conn);

    //error_reporting(0);
   }
               
?>

<?php include("header.php"); ?>

<!DOCTYPE>
<html>
    <head>
             <link href="css/dashboard.css" rel="stylesheet">
             <link href="css/algorithms2.css" rel="stylesheet">
            <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
            
    </head>

    <body>
        <?php include("includes/navbar.php"); ?>

        <section style="background:white;">
               <div class="container">
                   <div class="row">
                       <h4 class="display-4 py-4" style="color:green;"><strong>Make sure its fun and initiative </strong></h4>
                   </div>
               </div>
        </section>
        
        <div class="container">
        <form action="<?php echo htmlspecialchars( $_SERVER['PHP_SELF'] ); ?>" method="post" id="setQuestionForm">
          <div class="form-row">
            <div class="form-group col-md-6">
              <label for="problem_name">Problem Name</label>
              <input type="text" class="form-control" id="problem_name" placeholder="Problem Name" required>
            </div>
            <div class="form-group col-md-3">
              <label for="difficulty">Difficulty</label>
              <select id="difficulty" class="form-control">
                  
              <option selected>Easy</option>
              <option>Medium</option>
              <option>Hard</option>
            
              </select>
            </div>
              <div class="form-group col-md-3">
              <label for="max_score">Max Score</label>
              <input type="number" class="form-control" id="max_score" placeholder="10">
            </div>
          </div>
            
            <div class="form-row">
                <div class="form-group col-md-4">
                    <label for="category">Category</label>
                      <select id="category" class="form-control">

                          <option selected>Algorithms</option>
                          <option>Data Structures</option>
                          <option>Mathematics</option>
                          <option>Geometry</option>
                          <option>Statistics</option>

                      </select>
                </div>
            </div>
        
            
            <div class="form-group">
                <label for="description">Description</label>
                <textarea class="form-control" id="description" rows="3"></textarea>
            </div>
           
          <div class="form-group">
                <label for="input_format">Input Format</label>
                <textarea class="form-control" id="input_format" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="output_format">Output Format</label>
                <textarea class="form-control" id="output_format" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="constrains">Constrains</label>
                <textarea class="form-control" id="constrains" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="sample_input">Sample Input</label>
                <textarea class="form-control" id="sample_input" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="sample_output">Sample Output</label>
                <textarea class="form-control" id="sample_output" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="notes">Notes</label>
                <textarea class="form-control" id="notes" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="test_cases">Test Cases</label>
                <textarea class="form-control" id="test_cases" rows="3"></textarea>
            </div>
           
            <div class="form-group">
                <label for="test_case_output">Test Case Outputs</label>
                <textarea class="form-control" id="test_case_output" rows="3"></textarea>
            </div>
           
          
          <button type="submit" class="btn btn-primary" name="setQuestion">ADD IT TO THE DATABASE!</button>
</form>
        </div>
        
        
        
        
        
    </body>
</html>