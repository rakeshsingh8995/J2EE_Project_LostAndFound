<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<title></title>
<script type="text/javascript">
function validate()
{ 
if( document.mobilenumbervalidation.mobileno.value == "" ||
isNaN( document.mobilenumbervalidation.mobileno.value) ||
document.mobilenumbervalidation.mobileno.value.length != 10 )
{
alert( "Please provide a Mobile No in the format 123." );
document.mobilenumbervalidation.mobileno.focus() ;

return false;
}

var email = document.mobilenumbervalidation.email_id.value;
atpos = email.indexOf("@");
dotpos = email.lastIndexOf(".");
if (email == "" || atpos < 1 || ( dotpos - atpos < 2 )) 
{
alert("Please enter correct email ID");
document.mobilenumbervalidation.email_id.focus() ;
return false;
}

return( true );
}
</script>
</head>
<br/>
<h2 align="center">Details</h2>
<form method="post" action="fs" name="mobilenumbervalidation" onsubmit="return(validate());">

    
  
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<lable for="cars">Choose a Item:</lable>
    		<select class="form-control" id="cars" name="it">
    		<option>Choose items</option>
    		<option>Moblie</option>
			<option>Laptop</option>
			<option>Moblie Charger</option>
			<option>Ladies Beg</option>
			<option>Men's Beg</option>
			<option>Ladies Wallet</option>
			<option>Men's Wallet</option>
    		</select>
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">Location</label>
    		<input type="text" class="form-control" placeholder="location" name="lc">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">Lost-Date</label>
    		<input type="text" class="form-control" placeholder="lost date" name="ld">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">Description</label>
    		<input type="text" class="form-control" placeholder="description" name="de">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">Title</label>
    		<input type="text" class="form-control" placeholder="title" name="t">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">FirstName</label>
    		<input type="text" class="form-control" placeholder="first name" name="fn">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">LastName</label>
    		<input type="text" class="form-control" placeholder="last name" name="ln">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">MobileNo</label>
    		<input type="text" class="form-control" placeholder="mobileno" name="mobileno">
    	</div>
    </div>
    <div class="row">
    	<div class="form-group col-xl-6 offset-lg-3">
    		<label for="inputname">Email_id</label>
    		<input type="text" class="form-control" placeholder="email_id" name="email_id">
    	</div>
    </div>
   
    <button type="submit" class="btn btn-primary offset-lg-3">Submit</button>
    
    

</form>
</html>
