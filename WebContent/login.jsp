<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta charset="ISO-8859-1">

        <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">  -->
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"> 
        <meta name="description" content="Login and Registration Form with HTML5 and CSS3" />
        <meta name="keywords" content="html5, css3, form, switch, animation, :target, pseudo-class" />
        <meta name="author" content="Codrops" />
        <link rel="shortcut icon" href="../favicon.ico"> 
        <link rel="stylesheet" type="text/css" href="css/demo.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
		<link rel="stylesheet" type="text/css" href="css/animate-custom.css" />
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

</head>

<body>
        <div class="container">
            <!-- Codrops top bar -->
            <div class="codrops-top">
<!--                 <a href=""> -->
<!--                     <strong>&laquo; Previous Demo: </strong>Responsive Content Navigator -->
<!--                 </a> -->
<!--                 <span class="right"> -->
<!--                     <a href=" http://tympanus.net/codrops/2012/03/27/login-and-registration-form-with-html5-and-css3/"> -->
<!--                         <strong>Back to the Codrops Article</strong> -->
<!--                     </a> -->
<!--                 </span> -->
<!--                 <div class="clr"></div> -->
            </div><!--/ Codrops top bar -->
<!--             <header> -->
<!--                 <h1>Login and Registration Form <span>with HTML5 and CSS3</span></h1> -->
<!-- 				<nav class="codrops-demos"> -->
<!-- 					<span>Click <strong>"Join us"</strong> to see the form switch</span> -->
<!-- 					<a href="index.html" class="current-demo">Demo 1</a> -->
<!-- 					<a href="index2.html">Demo 2</a> -->
<!-- 					<a href="index3.html">Demo 3</a> -->
<!-- 				</nav> -->
<!--             </header> -->
            <section>				
                <div id="container_demo" >
                    <!-- hidden anchor to stop jump http://www.css3create.com/Astuce-Empecher-le-scroll-avec-l-utilisation-de-target#wrap4  -->
                    <a class="hiddenanchor" id="toregister"></a>
                    <a class="hiddenanchor" id="tologin"></a>
                    <div id="wrapper">
                        <div id="login" class="animate form">
                            <form  action="loginCheck.jsp" autocomplete="on"> 
                                <h1>Log in</h1> 
                                <%
                               	 String result=(String)session.getAttribute("failure");
                                System.out.println(result);
                                if(result != null)
                                {
                                	session.setAttribute("failure","");
	                                if(result.equals("Incorrect Username/Password"))
	                                {
	                                	%><label style="color:red;"> Incorrect Username/Password </label><%
	                                }
	                                else
	                                {
	                                	%><labe> </label><%
	                                }
                                }
                                
                                %>
                                <p> 
<!--                                     <label for="username" class="uname" data-icon="u" > Your email or username </label> -->
									<label for="username" class="uname" ><i class="fa fa-user"></i> Your email or username </label>
                                    <input id="username" name="username" required="required" type="text" placeholder="myusername or mymail@mail.com"/>
                                </p>
                                <p> 
<!--                                     <label for="password" class="youpasswd"> Your password </label> -->
                                    <label for="password" class="youpasswd"><i class="fa fa-key"></i> Your password </label>
                                    <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" /> 
                                </p>
                                <p> 
                                    <label for="select" class="icon"><i class="fa fa-filter"></i> Type </label>
                                    <select>
									  <option value="company">Company</option>
									  <option value="student">Student</option>
									  <option value="trainer">Trainer</option>
									  
									</select>
                                    
<!--                                     <input id="password" name="password" required="required" type="password" placeholder="eg. X8df!90EO" />  -->
                                </p>
                                <p class="keeplogin"> 
									<input type="checkbox" name="loginkeeping" id="loginkeeping" value="loginkeeping" /> 
									<label for="loginkeeping">Keep me logged in</label>
								</p>
                                <p class="login button">
                                Not a member yet ?
									<a href="#toregister" class="to_register" style="margin-right:108px;">Join us</a> 
                                    <input type="submit" value="Login" /> 
								</p>

                            </form>
                        </div>

                        <div id="register" class="animate form">
                            <form  action="registerUser.jsp" autocomplete="on"> 
                                <h1> Sign up </h1> 
                                <p> 
                                    <label for="usernamesignup" class="uname"><i class="fa fa-user"></i> Your username</label>
                                    <input id="usernamesignup" name="usernamesignup" required="required" type="text" placeholder="mysuperusername690" />
                                </p>
                                <p> 
                                    <label for="emailsignup" class="youmail"><i class="fa fa-envelope icon"></i> Your email</label>
                                    <input id="emailsignup" name="emailsignup" required="required" type="email" placeholder="mysupermail@mail.com"/> 
                                </p>
                                <p> 
                                    <label for="passwordsignup" class="youpasswd"><i class="fa fa-key"></i>Your password </label>
                                    <input id="passwordsignup" name="passwordsignup" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p> 
                                    <label for="passwordsignup_confirm" class="youpasswd"><i class="fa fa-key"></i> Please confirm your password </label>
                                    <input id="passwordsignup_confirm" name="passwordsignup_confirm" required="required" type="password" placeholder="eg. X8df!90EO"/>
                                </p>
                                <p class="signin button">
                                Already a member ?
									<a href="#tologin" class="to_register" style="margin-right:64px;"> Go and log in </a> 
									<input type="submit" value="Sign up"/> 
								</p>
                                
                            </form>
                        </div>
						
                    </div>
                </div>  
            </section>
        </div>
    </body>

</html>