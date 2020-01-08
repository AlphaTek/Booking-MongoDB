<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Display Page</title>

    <!-- Site Properties -->
    <title>Booking Page - TheStation</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />
</head>
<body>

    <!-- Page Contents -->
    <div class="pusher">
      <div id="main" class="ui inverted vertical center aligned segment">
        <div class="ui container">
          <div class="ui secondary inverted  menu">
            <a href="#" class="item">Home</a>
            <a href="#" class="item">Merchandise</a>
            <a href="/spring/user/add" class="active item">Book A Date</a>
            <a href="#" class="item">Programs</a>
            <a href="#" class="item">Contact</a>
            <div class="right item">
              <a class="ui inverted button">Log in</a>
              <a class="ui inverted button">Sign Up</a>
            </div>
          </div>
        </div>
      </div>




    <div class="ui segment">
	 <div class="ui link cards centered floated">
	  <c:forEach var="customer" items="${users}">
	  
          <div class="ui card">
            <div class="content">
              <h2 class="ui center aligned icon header">
                Booking details </h2>
            </div>
            
             <div class="content"> 
             <div class="header">Personal info</div> 
             
              <h5 class="ui sub header small left floated">Adult's Name: </h5>
              <h3 class="ui sub header large left floated">${customer.parentName}</h3>
              	<br>
              <h4 class="ui sub header small left floated">Kid's Name: </h4>
              <h4 class="ui sub header large left floated">${customer.childName}</h4>
              	<br>
              <h4 class="ui sub header small left floated">Kid's Age: </h4>
              <h4 class="ui sub header large left floated">${customer.childAge}</h4>
              	<br>
              <h4 class="ui sub header small left floated">Booking Date: </h4>
              <h4 class="ui sub header large left floated">${customer.date}</h4>
              
             </div>       
               
               
             <div class="content">
             <div class="header">Contact info</div> 
               <h4 class="ui sub header small left floated">Email: </h4>
               <h4 class="ui sub header large left floated">${customer.email } </h4>
               <br>
               <h4 class="ui sub header small left floated">Phone: </h4>
               <h4 class="ui sub header large left floated">${customer.phone }</h4>
             </div>               
                
             <div class="content"> 
                <div class="header">Emergency contact info</div>                
                 <h4 class="ui sub header small left floated"> Name: </h4>
                 <h4 class="ui sub header large left floated"> ${customer.emergencyContact }</h4>
                 <br>
                 <h4 class="ui sub header small left floated"> Number: </h4> 
                 <h4 class="ui sub header large left floated"> ${customer.emergencyNumber }</h4>                  
             </div>
             
             <div class="content"> 
                <div class="header">Additional info:</div>                
                 <h4 class="ui sub header">${customer.info }</h4>             
                
             </div>
                
                <div class="extra content">                
                    <c:url value="/user/edit?id=${customer.id}" var="editUrl"/>
						<a href="${editUrl}" class="ui button positive small ">Edit</a>
                <c:url value="/user/delete?id=${customer.id}" var="deleteUrl"/>
					<a href="${deleteUrl}" class="ui button negative small ">Delete</a><br>
                </div>
            </div>
     
</c:forEach>
	</div>
</div>

   <div class="ui segment container">
      <c:url value="/user/add" var="addUrl" />
     <center> <a href="${addUrl}" class="ui button large primary center floated"  >Add New Customer</a> </center>
     
   </div>

      <!--Footer Start-->
      <div class="ui inverted vertical footer segment">
        <div class="ui container">
          <div
            class="ui stackable inverted divided equal height stackable grid"
          >
            <!--Column 1 Sign Up/ Social Media icons-->
            <div class="five wide column">
              <h3 class="ui inverted header">Stay Connected</h3>
              <div class="footer-font-color">
                Sign up to recieve weekly updates on new and exciting programs.
              </div>
              <div class="ui action input">
                <input type="text" placeholder="Enter Email.." />
                <button class="ui orange button">Sign Up</button>
              </div>
            </div>
            <!--Column 2 More About Our Programs-->
            <div class="six wide column">
              <h3 class="ui inverted header">
                Run Free, Create, Investigate and Explore
              </h3>
              <div class="footer-font-color">
                We offer all this and so much more! Equipped with an open-space
                parkour gym as well as a super secret International Super Spy
                School!
                <br />
                <a href="#"
                  >More About Our Programs <i class="angle right icon"></i
                ></a>
              </div>
            </div>
            <div class="three wide column">
              <h4 class="ui inverted header">Services</h4>
              <div class="ui inverted link list">
                <a href="HomePage.html" class="item">Home</a>
                <a href="#" class="item">Merchandise</a>
                <a href="Booking.html" class="item">Book A Date</a>
                <a href="#" class="item">Programs</a>
                <a href="ContactUs.html" class="item">Contact</a>
                <a href="#" class="item">Blog</a>
              </div>
              <div class="social-icons-footer">
                <a target="_blank" href="https://www.facebook.com"
                  ><button class="ui circular facebook icon button">
                    <i class="facebook icon"></i></button
                ></a>
                <a target="_blank" href="https://www.instagram.com"
                  ><button class="ui circular instagram icon button">
                    <i class="instagram icon"></i></button
                ></a>
              </div>
            </div>
            <div class="two wide column">
              <h4 class="ui inverted header">Map</h4>
              <div class="ui inverted link list">
                <iframe
                  src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d22893.40140595256!2d-77.37348552199127!3d44.17255410082279!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89d62fec9052053b%3A0x1421534d1369ea23!2sThe+Station!5e0!3m2!1sen!2sca!4v1554210308698!5m2!1sen!2sca"
                  width="200"
                  height="150"
                  frameborder="0"
                  style="border:0"
                  allowfullscreen
                ></iframe>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="footer-address-contact">
        <strong>The Station Belleville</strong>
        <i class="circle small icon pding-right-circle-icon-footer"></i> 316
        Dundas St E, Belleville, ON, K8N 1E6
        <i class="circle small icon pding-right-circle-icon-footer"></i>
        TheStationBellevile@gmail.com
        <i class="circle small icon pding-right-circle-icon-footer"></i> (123)
        456 7890
        <i class="circle small icon pding-right-circle-icon-footer"></i>
        <em>&copy DownloadMoreRAM 2019</em>
      </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>

</body>
</html>