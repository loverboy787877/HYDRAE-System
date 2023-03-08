<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Reservation Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/booking.css">
		
		
    </head>
    <body>
	<form method="post" action="book_appointment_process.jsp">
		<section class = "banner1">
		<div class="main">
				<div class="logo">
					<img src="images/logo.png">
				</div>	
				<ul>
					<li><a href="signout.html"> Sign out </a> </li>
				</ul>
				<ul>
					<li><a href="home.html"> Home </a> </li>
				</ul>
				<div class= "logout"> 	
		        </div>
			    
        <section class = "banner">
		
            <h2>BOOK YOUR APPOINTMENT NOW </h2>
            <div class = "card-container">
                <div class = "card-img">
                    <!-- image here -->
                </div>

                <div class = "card-content">
                    <h3>Reservation</h3>
                    <form>
                        <div class = "form-row">
                            <input type="date" id="date">
							</div>
						<div class = "form-row">
                    
									<input type="text" name="booking_details" placeholder="Booking Details:">
									<input type="time" id="appt" name="booking_time" placeholder="Time:
											min="09:00" max="18:00" required >
                        </div>

                        <div class = "form-row">
                            
                            <input type = "text" placeholder="Phone Number">
                        </div>

                        <div class = "form-row">
                            
                            <input type = "submit" value = "BOOK APPOINTMENT">
                        </div>
						
			</div>	
                    </form>
                </div>
            </div>
        </section>

    </body>
</html>