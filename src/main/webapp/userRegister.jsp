<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Patient Register</title>
<meta charset="ISO-8859-1">
           
                <script>const getDatePickerTitle = elem => {
  // From the label or the aria-label
  const label = elem.nextElementSibling;
  let titleText = '';
  if (label && label.tagName === 'LABEL') {
    titleText = label.textContent;
  } else {
    titleText = elem.getAttribute('aria-label') || '';
  }
  return titleText;
}

const elems = document.querySelectorAll('.datepicker_input');
for (const elem of elems) {
  const datepicker = new Datepicker(elem, {
    'format': 'dd/mm/yyyy', // UK format
    title: getDatePickerTitle(elem)
  });
}</script>
<style></style>
	</head>
	<body>
	
		<%@include file="main_header.jsp" %>
		
		
<section style="min-height: 100vh;">
			  <div class="container-fluid">
			    <div class="row">
			      <div class="col-sm-6 px-0 d-none d-sm-block">
			        <img src="https://i.pinimg.com/originals/4f/16/80/4f1680ba3b205dd1915b2033e93213a7.jpg" alt="Login image" class="w-100 vh-100" style="opacity: 0.6;object-fit: cover; object-position: left;box-sizing: 1px">
			      </div>
                                 <div class="col-sm-6 text-black">
                                  <div class="row vh-100 align-items-center">
                                  
                                  <!-- div class="d-flex align-items-center h-custom-2 px-5 ms-xl-4 mt-5 pt-5 pt-xl-0 mt-xl-n5" -->
                                  
			        <div class="d-flex justify-content-center">
			
                                    <!-- FORM -->
                                    <div style="height: 75vh; width: 30rem; overflow-y: auto; overflow-x: visible">
		<form action="<%= request.getContextPath() %>/User" method="post" style="width: 85%;">
                    <h3 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Patient Register</h3>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example1c">Full Name</label>
                        <input type="text" id="form3Example1c" class="form-control" name="name" required />
                        
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example3c">Age </label>
                        <input type="number" id="form3Example3c" class="form-control" name="age" required/>
                        
                      </div>
                    </div>
  
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example4c">Contact Number</label>
                        <input type="text" id="form3Example4c" class="form-control" name="contact" required/>
                        
                      </div>
                    </div>
                      
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example4cd">National Identification Number</label>
                        <input type="text" id="form3Example4cd" class="form-control" name="Nic" required/>
                        
                      </div>
                    </div>
  
                      
                   <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0" id="datepicker">
                                   <label class="form-label" for="form3Example1c">Address</label>
                        <input type="text" id="dateid" class="form-control" name="Address" required/>
                       
                      </div>
                    </div>
                    
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw" ></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example1c" name="address">Email Address</label>
                        <input type="email" id="addressId" class="form-control" name="Uname" required />
                        
                      </div>
                      </div>
                      
                        <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw" ></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example1c" name="address">Password</label>
                        <input type="password" id="addressId" class="form-control" name="pass" required />
                        </div>
                      </div>
                        <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw" ></i>
                      <div class="form-outline flex-fill mb-0">
                                  <label class="form-label" for="form3Example1c" name="address">Re-Type Password</label>
                        <input type="password" id="addressId" class="form-control"  />
                        
                      </div>
                    </div>	
                      
                    <div class="d-flex flex-row align-items-center mb-4">
                      <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                      <div class="form-outline flex-fill mb-0">
                      		<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="male" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault2">
      Male
  </label>
</div>
		
			<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="female" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault2">
      Female
  </label>
</div>
		
		<div class="form-check">
  <input class="form-check-input" type="radio" name="gender" value="other" id="flexRadioDefault1">
  <label class="form-check-label" for="flexRadioDefault2">
      Other
  </label>
</div>
		
                       
                      </div>
                    </div>
                      
                    <div class="form-check d-flex justify-content-center mb-5">
                      <input class="form-check-input me-2" type="checkbox" value="" id="form2Example3c" required/>
                      <label class="form-check-label" for="form2Example3">
                        I agree all statements in <a href="#!">Terms of service</a>
                      </label>
                    </div>
  
                    <div class="pt-1 mb-4">
                        <input class="btn btn-outline-primary" type="submit" name="Add" value="&nbsp;&nbsp;Register&nbsp;&nbsp;">
                      
                    </div>
  
                  </form>
                                    </div>
                                    <!-- FORM -->
                                </div>
			        </div>
			
			      </div>
                            </div>
			  </div>
		</section>
		
		
		<%@include file="footer.jsp" %>
	</body>
</html>