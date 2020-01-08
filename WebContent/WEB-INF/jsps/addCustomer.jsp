<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
  <head>
    <!-- Standard Meta -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, maximum-scale=1.0"
    />

    <!-- Site Properties -->
    <title>Booking Page - TheStation</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css"
    />

    <style type="text/css">
      .hidden.menu {
        display: none;
      }

      .masthead.segment {
        min-height: 700px;
        padding: 1em 0em;
      }
      .masthead .logo.item img {
        margin-right: 1em;
      }
      .masthead .ui.menu .ui.button {
        margin-left: 0.5em;
      }
      .masthead h1.ui.header {
        margin-top: 3em;
        margin-bottom: 0em;
        font-size: 4em;
        font-weight: normal;
      }
      .masthead h2 {
        font-size: 1.7em;
        font-weight: normal;
      }

      .ui.vertical.stripe {
        padding: 8em 0em;
      }
      .ui.vertical.stripe h3 {
        font-size: 2em;
      }
      .ui.vertical.stripe .button + h3,
      .ui.vertical.stripe p + h3 {
        margin-top: 3em;
      }
      .ui.vertical.stripe .floated.image {
        clear: both;
      }
      .ui.vertical.stripe p {
        font-size: 1.33em;
      }
      .ui.vertical.stripe .horizontal.divider {
        margin: 3em 0em;
      }

      .quote.stripe.segment {
        padding: 0em;
      }
      .quote.stripe.segment .grid .column {
        padding-top: 5em;
        padding-bottom: 5em;
      }

      .footer.segment {
        padding: 5em 0em;
      }

      .secondary.pointing.menu .toc.item {
        display: none;
      }

      @media only screen and (max-width: 700px) {
        .ui.fixed.menu {
          display: none !important;
        }
        .secondary.pointing.menu .item,
        .secondary.pointing.menu .menu {
          display: none;
        }
        .secondary.pointing.menu .toc.item {
          display: block;
        }
        .masthead.segment {
          min-height: 350px;
        }
        .masthead h1.ui.header {
          font-size: 2em;
          margin-top: 1.5em;
        }
        .masthead h2 {
          margin-top: 0.5em;
          font-size: 1.5em;
        }
      }

      .img-main {
        background: url("https://cdn.shopify.com/s/files/1/1104/2314/articles/Sydney_Australia_Parkour_Aapes_Farang_Freerunning_Beasts_Down_Under_Harbour_Bridge_1024x1024.jpg?v=1524568042");
      }

      .ui.secondary.inverted.menu.scrolled {
        background-color: rgb(0, 0, 0) !important;
      }

      .ui.large.secondary.inverted.pointing.menu {
        background-color: rgb(0, 0, 0);
      }

      .change-font {
        font-size: 20px;
      }

      .join-commotion-bg {
        background-color: rgb(212, 212, 212) !important;
      }

      .site-img-bg {
        background-color: rgb(73, 73, 73) !important;
      }

      .img-site-font-color {
        margin-bottom: 10px !important;
        font-size: 14px !important;
        color: rgb(0, 0, 0) !important;
      }

      .footer-font-color {
        margin-top: 0px !important;
        font-size: 12px !important;
        color: rgb(112, 112, 112) !important;
      }

      .footer-address-contact {
        font-size: 13px !important;
        text-align: center !important;
        padding-bottom: 20px !important;
        color: rgb(112, 112, 112) !important;
        background-color: #1b1c1d !important;
      }

      .pding-right-circle-icon-footer {
        padding-right: 30px !important;
        padding-left: 30px !important;
      }

      .social-icons-footer {
        margin-top: 5px !important;
      }

      .img-site-h1-color {
        color: rgb(68, 68, 68) !important;
      }

      .img-shadow {
        -webkit-box-shadow: 0 4px 6px -6px #222 !important;
        -moz-box-shadow: 0 4px 6px -6px #222 !important;
        box-shadow: 0 4px 6px -6px #222 !important;
      }
    </style>

    <!--Book now button transition and modal pop up-->
    <script>

      $(document).ready(function () {
        $("#btnJiggle").hover(function () {

          $("#btnJiggle").transition("jiggle");
        });
      });

      $(function () {
        $("#btnJiggle").transition("jiggle")({
          on: "hover"
        });
      });

      $(document).ready(function () {
        $("#btnJiggle").click(function () {

          $('.ui.modal')
            .modal('show');
        });
      });

    </script>
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

  <img class="ui fluid image" src="https://images.theconversation.com/files/132801/original/image-20160802-9761-2lc2jq.jpg?ixlib=rb-1.1.0&rect=0%2C336%2C2500%2C1212&q=45&auto=format&w=1356&h=668&fit=crop" style="height: 15em">


</div>


      <!-- Form input begins -->
      

     
    <!--   <div class="ui modal"> --> 
<div class="ui segment" style="background-color: gainsboro">
<div class="ui segmet container ">

 <c:url value="/user/save" var="saveUrl" />
<form:form modelAttribute="userAttr" method="post" action="${saveUrl}">
<form:hidden path="id" />
  <div class="ui form ">
    <div class="fields">

      <div class="six wide required field">
        <label>Parent Name</label>
        <form:input placeholder="Name of the adult" type="text" path="parentName" />
      </div>
      <div class="six wide required field">
        <label>Child Name</label>
        <form:input placeholder="Name of the kid" type="text" path="childName"/>
      </div>
       <div class="four wide field">
        <label>Child's Age</label>
        <form:input placeholder="Age" type="number" path="childAge" />
      </div>
    </div>

    <div class="fields">
      <div class="four wide required field">
        <label>Phone</label>
        <form:input placeholder="Phone" type="tel" path="phone"/>
      </div>
      <div class="six wide required field">
        <label>Email </label>
        <form:input placeholder="Email" type="text" path="email" />
      </div>
      <div class="six wide field">
        <label>Select a date </label>
        <div class="ui calendar" id="example1">
          <div class="ui input left icon">
            <i class="calendar icon"></i>
            <form:input type="date" placeholder="Date/Time" path="date" />
          </div>
        </div>
      </div>
    </div>

    <div class="fields">
      
      
        <div class="eight wide field">
        <label>Emergency Contact Name</label>
        <form:input placeholder="First Name" type="text" path="emergencyContact" />
      </div>
      
      <div class="eight wide field">
        <label>Emergency Contact Number</label>
        <form:input placeholder="Phone" type="tel" path="emergencyNumber" />
      </div>
      
      
    </div>



    <div class="fields">

        <div class="sixteen wide field">
            <label>Additional info</label>
            <form:textarea rows="2" placeholder="Medical conditions, allergies..." path="info" />
          </div>

    </div>

    <div class="fields">
      <div class="sixteen wide field">
        <div class="required inline field">
          <div class="ui checkbox">
            <input type="checkbox" tabindex="0" class="hidden">
            <label>I agree to the terms and conditions</label>
          </div>
        </div>
      </div>
    </div>

    <div class="fields">
      <div class="four wide field">

      </div>

     

        <div class="eight wide field">
            <button class="ui button large primary fluid">Submit Form     </button>
          </div>

          <div class="four wide field">
        
            </div>
    </div>

  </div>
  
  </form:form>
</div>
</div>
<!-- </div> -->


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
