<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@page isELIgnored="false" %>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Feedback</title>
  </head>
  <body>
    
    <div class="container mt-5">
    <P>${ MadeBy }</P>
	<P>${ Tech }</P>
    <h3 class="text-center">${ Header }</h3>
    <p class="text-center">${ Desc }</p>
	    <form action="processform" method="post">
	    
	    	 <div class="form-group">
	    		<label for="text1">How often do you use our app?</label>
	    		<input type="text" class="form-control" id="text1" aria-describedby="emailHelp" 
	    			  	name="text1" placeholder="Everyday/Once a week/Monthly">
	  		 </div>
	  		 
	  		 <div class="form-group">
	    		<label for="text2">What is the motivation to use our app?</label>
	    		<input type="text" class="form-control" id="text2" aria-describedby="emailHelp" 
	    				name="text2" placeholder="What problem does it solve for you?">
	  		 </div>
	  		 
	  		 <div class="form-group">
	    		<label for="text3">What would you like to see improved the most?</label>
	    		<textarea rows="10" cols="40" class="form-control" id="text3" aria-describedby="emailHelp" 
	    				name="text3" placeholder="Your suggestions (If any)"></textarea>
	  		 </div>
	  		 
	  		 <div>
	  		 
	  		<style>
				body {
				font-family: Verdana, arial;
				 }
				
				.notation-text {
				color: #000000;
				font-size: 18px;
				text-align: center;
				margin: 18px;
				}
				
				.notation-block-star {
				display: table;
				margin: 0 auto;
				width: inherit;
				}
				
				
				.notation-star {
				background-image: url("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Empty_Star.svg/2000px-Empty_Star.svg.png");
				background-repeat: no-repeat;
				cursor: pointer;
				display: table-cell;
				float: right;
				height: 20px;
				width: 20px;
				padding: 10 5px;
				background-size: cover;
				}
				
				
				.notation-star:hover,
				.notation-star:hover ~ .notation-star {
				background-image: url("http://findicons.com/files/icons/1035/human_o2/128/bookmark_new.png");
				}
				
				.notation-star-selected {
				background-image: url("../images/etoile_jaune.png");
				background-repeat: no-repeat;
				cursor: pointer;
				display: table-cell;
				float: right;
				height: 64px;
				width: 64px;
				padding: 0 5px;
				}
				
				.notation-star-selected  ~ .notation-star {
				background-image: url("../images/etoile_jaune.png");
				}
				</style>

    </head>

        <div class="notation-text">Your feedback motivates us and helps us to serve you better :)</div>
		   <div method="post" action="voting">
		   <div id="star5" class="notation-star" onClick="notation(this.id);"></div>
		   <div id="star4" class="notation-star" onClick="notation(this.id);"></div>
		   <div id="star3" class="notation-star" onClick="notation(this.id);"></div>
		   <div id="star2" class="notation-star" onClick="notation(this.id);"></div>
		   <div id="star1" class="notation-star" onClick="notation(this.id);"></div>
		   <input type="hidden" id="notationNote" name="notation_note" value="0">
		   	
		   <p id="vote"></p>	  		 
	  	</div>	  		 
	  	<div class="container text-center">
	  		<button type="submit" class="btn btn-success">Submit Feedback</button>
	  	</div>	    
	    </form>
	 </div>   
	
	    <!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	 </body>
</html>