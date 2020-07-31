<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Search</title>
</head>
<body>
<h2 align="center">Search Item</h2>

	<form method="" action="ss" ><br>

<div class="row">
    	<div class="form-group col-xl-6 offset-lg-3" >
    		<lable for="cars">Choose a Item:</lable>
    		<select class="form-control" id="cars" name="it"align="center" >
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
		<button type="submit" class="btn btn-primary offset-lg-3">Submit</button>
	</form>


</body>
</html>