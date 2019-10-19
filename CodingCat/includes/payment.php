<form class="modal fade" action="<?php echo htmlspecialchars( $_SERVER['PHP_SELF'] ); ?>" method="post" id="paymentModal">
            
            <div class="modal-dialog">
            
                <div class="modal-content">
                    
		<div class="paymentCont">
						<div class="headingWrap">
								<h3 class="headingTop text-center">Select Your Payment Method</h3>	
								
						</div>
						<div class="paymentWrap">
							<div class="btn-group paymentBtnGroup btn-group-justified" data-toggle="buttons">
					            <label class="btn paymentMethod active">
					            	<div class="method visa"></div>
					                <input type="radio" name="options" checked> 
					            </label>
					            <label class="btn paymentMethod">
					            	<div class="method master-card"></div>
					                <input type="radio" name="options"> 
					            </label>
					            <label class="btn paymentMethod">
				            		<div class="method amex"></div>
					                <input type="radio" name="options">
					            </label>
					             <label class="btn paymentMethod">
				             		<div class="method vishwa"></div>
					                <input type="radio" name="options"> 
					            </label>
					           
					         
					        </div>        
						</div>
						
					</div>
		
	
                
            
                <button type="submit" for="Signup_submit" class="btn btn-primary btn-lg btn-block" name="businessSignup">Pay now</button>
                        

                </div>
                        
             </div>
       
        </form>
   