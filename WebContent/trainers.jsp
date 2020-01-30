<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
<head>
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Favicon-->
	<link rel="shortcut icon" href="img/fav.png">
	<!-- Author Meta -->
	<meta name="author" content="colorlib">
	<!-- Meta Description -->
	<meta name="description" content="">
	<!-- Meta Keyword -->
	<meta name="keywords" content="">
	<!-- meta character set -->
<meta charset="ISO-8859-1">
<!-- Site Title -->
	<title>Trainers</title>

	<link href="https://fonts.googleapis.com/css?family=Roboto:100,200,300,400,500,700" rel="stylesheet">
	<!--
			CSS
			============================================= -->
	<link rel="stylesheet" href="css/linearicons.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/nice-select.css">
	<link rel="stylesheet" href="css/animate.min.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/main.css">
</head>

<body>
	<!-- start header Area -->
	<header id="header">
		<div class="header-top">
			<div class="container">
				<div class="row">
					<div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
						<ul>
							<li><a href="#"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</div>
					<div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
					
					<%
						String userId = (String)request.getSession().getAttribute("username");
						System.out.println("== >> "+userId);
						
						if(userId == null)
						{
							%>
								<label></label>
							<%
						}
						else if(userId.equals(""))
						{
							%>
								<label></label>
							<%
						}
						else
						{
							%>
								
								<a href="logout.jsp" onMouseOver="this.style.color='#0093df'" onMouseOut="this.style.color='black'">Logout </a>
								<label> ( <%= session.getAttribute("username") %> )</label>
							<%
						}
					
					%>
					
						<a href="tel:+880 1234 654 953">
							<span class="text">+880 1234 654 953</span>
						</a>
						<a class="book-now" href="#">Book Now</a>
					</div>
				</div>
			</div>
		</div>
		<div class="container main-menu">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index.jsp"><img src="img/logo.png" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li><a href="index.jsp">Home</a></li>
						<li><a href="about.jsp">About</a></li>
						<li><a class="active" href="trainers.jsp">Trainers</a></li>
						<li class="menu-has-children"><a href="">Blog</a>
							<ul>
								<li><a href="blog-home.jsp">Blog Home</a></li>
								<li><a href="blog-single.jsp">Blog Single</a></li>
							</ul>
						</li>
						<li class="menu-has-children"><a href="">Pages</a>
							<ul>
								<li><a href="schedule.jsp">Schedule</a></li>
								<li><a href="courses.jsp">Courses</a></li>
								<li><a href="elements.jsp">Elements</a></li>
							</ul>
						</li>
						<li><a href="contact.jsp">Contact</a></li>
						
											<%
						if(userId == null)
						{
							%>
																<li><a href="login.jsp">Login</a></li>
								<li><a href="register.jsp#toregister">New User</a></li>
							<%
						}
						else if(userId.equals(""))
						{
							%>
																<li><a href="login.jsp">Login</a></li>
								<li><a href="register.jsp#toregister">New User</a></li>
							<%
						}
						else
						{
							%>
								<li><a href="newUserForm.jsp">Add Detail</a></li>
							<%
						}
					%>
						
					</ul>
				</nav><!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- end header Area -->

	<!-- start banner Area -->
	<section class="banner-area relative about-banner" id="home">
		<img class="cta-img img-fluid" src="img/cta-img.png" alt="">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1>
						Trainers
					</h1>
					<p class="link-nav"><a href="index.jsp">Home </a>
						<span class="lnr lnr-arrow-right"></span> <a href="trainers.jsp">
							Trainers</a></p>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->

	<!-- Start team Area -->
	<section class="team-area section-gap">
		<div class="container">
			<div class="row d-flex justify-content-center">
				<div class="col-lg-12">
					<div class="section-title-wrap text-center">
						<h1>How Yogaflex can change your life</h1>
						<p>As you pour the first glass of your favorite Chianti or Chardonnay and settle into an intimate Friday evening.</p>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex align-items-center">
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t1.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Ethel Davis</h4>
						<p>Managing Director (Sales)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t2.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Rodney Cooper</h4>
						<p>Creative Art Director (Project)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t3.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Dora Walker</h4>
						<p>Senior Core Developer</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t4.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Lena Keller</h4>
						<p>Creative Content Developer</p>
					</div>
				</div>

				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t1.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Ethel Davis</h4>
						<p>Managing Director (Sales)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t2.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Rodney Cooper</h4>
						<p>Creative Art Director (Project)</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t3.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Dora Walker</h4>
						<p>Senior Core Developer</p>
					</div>
				</div>
				<div class="col-md-6 col-lg-3 single-team">
					<div class="thumb">
						<img class="img-fluid" src="img/t4.jpg" alt="">
						<div class="align-items-center justify-content-center d-flex">
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-linkedin"></i></a>
						</div>
					</div>
					<div class="meta-text mt-30 text-center">
						<h4>Lena Keller</h4>
						<p>Creative Content Developer</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End team Area -->

	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4>About Us</h4>
						<p>
							The state of Utah in the United States is home to lots of beautiful National Parks, & Bryce Canyon National Park ranks as
							three of the magnificent & awe inspiring.
						</p>
					</div>
				</div>
				<div class="col-lg-4  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4>Contact Us</h4>
						<p>
							56/8, rockybeach road, santa monica, Los angeles, California - 59620.
						</p>
						<p class="number">
							012-6532-568-9746 <br> 012-6532-569-9748
						</p>
					</div>
				</div>
				<div class="col-lg-5  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h4>Newsletter</h4>
						<p>You can trust us. we only send offers, not a single spam.</p>
						<div class="d-flex flex-row" id="mc_embed_signup">

							<form class="navbar-form" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
							 method="get">
								<div class="input-group add-on align-items-center d-flex">
									<input class="form-control" name="email" placeholder="Your Email address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Your Email address'"
									 required="" type="email">
									<div style="position: absolute; left: -5000px;">
										<input name="b_36c4fd991d266f23781ded980_aefe40901a" tabindex="-1" value="" type="text">
									</div>
									<div class="input-group-btn">
										<button class="genric-btn"><span class="lnr lnr-arrow-right"></span></button>
									</div>
								</div>
								<div class="info mt-20"></div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<div class="footer-bottom row align-items-center">
				<p class="footer-text m-0 col-lg-6 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
				<div class="col-lg-6 col-sm-12 footer-social">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-dribbble"></i></a>
					<a href="#"><i class="fa fa-behance"></i></a>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->


	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	 crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
	<script src="js/easing.min.js"></script>
	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.tabs.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>

</html>