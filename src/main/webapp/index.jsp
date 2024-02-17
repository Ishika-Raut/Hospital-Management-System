<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
	<meta charset="ISO-8859-1">
	<title>Index</title>
	<%@include file = "component/allcss.jsp"%>
	<style type= "text/css">
	  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');
	</style>
	</head>
	<body>
		<%@include file = "component/navbar.jsp"%>
		  
<!-- ---------------Image Slider Start----------------- -->
		
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
		  <div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		  </div>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="img/s2.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="img/s3.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="img/slide01.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="img/slide2.jpg" class="d-block w-100" alt="...">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		
		</div>
<!-- ------------------Image Slider End------------------ -->

<!-- ------------------Services Start--------------------- -->
<section class="services container-fluid" id="services">
    <div class="container">
        <div class="row section-title">
            <h1 class="text-center" style="font-family:verdana; color:#17adb6;">OUR SERVICES</h1>
        </div>
        <div class="servic-row row">
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/service1.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">REGULAR CHECKUP</h5>
                </div>
            </div>
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/service2.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">24*7 FREE AMBULANCE</h5>
                </div>
            </div>
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/service4.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">MEDICINES</h5>
                </div>
            </div>
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/services04.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">DOCTORS</h5>
                </div>
            </div>
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/wards1.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">BEDS</h5>
                </div>
            </div>
            <div class="servic-col col-md-4">
                <div class="servcover">
                    <img src="img/total_care1.jpg" alt="">
                    <h5 class="pt-3" style="font-family:verdana;">CARE</h5>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- --------------------Services End------------------ -->

<!-------------------- Our Team Starts----------------- -->
<section class="our-team" id="team">
        <div class="container">
            <div class="section-title row">
                <h1 class= "text-center" style="font-family:verdana; color:#17adb6;">OUR TEAM</h1>               
            </div>
            <div class="row team-row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-usr">
                        <img src="img/team_member_01.jpg" alt="">
                        <div class="det-o text-center pt-2">
                            <h5 style="font-family:verdana;">Dr. Lisa Winget</h5>
                            <h6 style="font-family:verdana;">Gynaecologist</h6>
                         </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-usr">
                        <img src="img/team_member_04.jpg" alt="">
                        <div class="det-o text-center pt-2">
                            <h5 style="font-family:verdana;">Dr. David Kanuel</h5>
                            <h6 style="font-family:verdana;">Cardiologist</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-usr">
                        <img src="img/team_member_03.jpg" alt="">
                        <div class="det-o text-center pt-2">
                            <h5 style="font-family:verdana;">Dr. Meghal Sanghavi</h5>
                            <h6 style="font-family:verdana;">Medical Oncologist</h6>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-usr">
                        <img src="img/our_doc1.jpg" alt="" >
                        <div class="det-o text-center pt-2">
                            <h5 style="font-family:verdana;">Dr. Sandeep Gupta</h5>
                            <h6 style="font-family:verdana;">Neurosurgeon</h6>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
<!----------------- Our Team Ends-------------- -->

<!-- -------------Card Slider Starts-------------- -->

	<div class="section-padding" id="review">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="section-title">
                        <h1 style="font-family:verdana; color:#17adb6;">HAPPY PATIENTS</h1>

                        
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="owl-carousel client-testimonial-carousel">
                        <div class="single-testimonial-item" style="font-family:verdana;">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Eveniet ex labore id beatae molestiae, libero quis eum nam voluptates quidem.</p>
                            <h6>Jane Doe </h6>
                        </div>
                        <div class="single-testimonial-item" style="font-family:verdana;">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Eveniet ex labore id beatae molestiae, libero quis eum nam voluptates quidem.</p>
                            <h6>Chris Doe </h6>
                        </div>
                        <div class="single-testimonial-item" style="font-family:verdana;">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Eveniet ex labore id beatae molestiae, libero quis eum nam voluptates quidem.</p>
                            <h6>Ted Doe </h6>
                        </div>
                        <div class="single-testimonial-item" style="font-family:verdana;">
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                                Eveniet ex labore id beatae molestiae, libero quis eum nam voluptates quidem.</p>
                            <h6>Tom Doe </h6>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>

<script src="https://cdn.jsdelivr.net/npm/swiper@8/swiper-bunddle.min.js"></script>
<script id="rendered-js">
$(document).ready(function(){
	  $(".owl-carousel").owlCarousel({
	      items:3,
	      autoplay:true,
	      margin:30,
	      loop:true,
	      dots:true
//	      nav:true,
//	      navText:["<i class='fas fa-long-arrow-alt-left'></i>","<i class='fas fa-long-arrow-alt-right'></i>" ]
	  });
	});
    </script>
<!-- ----------------Card Slider Ends--------------- -->
<%@include file = "component/footer.jsp"%>
</body>
</html>