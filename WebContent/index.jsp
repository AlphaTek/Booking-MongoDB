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
    <title>Homepage - Semantic</title>
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

    <!--NavBar scroll - Color change-->
    <script>
      $(function() {
        $(document).scroll(function() {
          var $nav = $(".ui.secondary.inverted.menu");
          $nav.toggleClass("scrolled", $(this).scrollTop() > 650);
        });
      });

      $(function() {
        $(".image").dimmer({
          on: "hover"
        });
      });

      // $(document).ready(function() {
      //   // fix menu when passed
      //   $(".masthead").visibility({
      //     once: false,
      //     onBottomPassed: function() {
      //       $(".fixed.menu").transition("fade in");
      //     },
      //     onBottomPassedReverse: function() {
      //       $(".fixed.menu").transition("fade out");
      //     }
      //   });

      //   // create sidebar and attach to menu open
      //   $(".ui.sidebar").sidebar("attach events", ".toc.item");
      // });
    </script>
  </head>
  <body>


    <!-- Page Contents -->
    <div class="pusher">
      <div
        id="main"
        class="ui inverted vertical masthead center aligned segment img-main"
        style="background:url('https://i.ytimg.com/vi/2vfoyY9lshI/maxresdefault.jpg'); background-repeat:no-repeat; background-size: cover; "
      >
        <div class="ui container">
          <div class="ui large secondary inverted pointing menu">
            <a class="toc item">
              <i class="sidebar icon"></i>
            </a>
            <a class="active item">Home</a>
            <a href="#" class="item">Merchandise</a>
            <a href="/spring/user/add" class="item">Book A Date</a>
            <a href="#" class="item">Programs</a>
            <a href="#" class="item">Contact</a>
            <div class="right item">
              <a class="ui inverted button">Log in</a>
              <a class="ui inverted button">Sign Up</a>
            </div>
          </div>
        </div>

        <div class="ui text container">
          <h1 class="ui inverted header">
            The Station Belleville
          </h1>
          <h2>We offer a wide variety of programs.</h2>
          <div class="ui success button ">
            Learn More <i class="right arrow icon"></i>
          </div>
        </div>
      </div>
      <!--Join the Commotion-->
      <div class="ui vertical stripe segment join-commotion-bg">
        <div class="ui text container">
          <h2 class="ui center aligned icon header">
            <i class="circular users icon"></i>
            Join the Commotion
          </h2>
          <div class="ui divider"></div>
          <div class="change-font">
            Children want to run free, create, investigate and explore. We offer
            all this and so much more! Our facility includes an open-space
            parkour gym, to help elevate natural reflexes and master the craft
            of climbing, free running and an overall active lifestyle! And after
            you're done your parkour training, put your physical abilities to
            the test and see if you have what it takes to be an undercover spy.
            At Double 'OO' International Super Spy School, we need YOU to help
            us keep Belleville villain free! ​ Don't know about parkour? That's
            okay! Learn about the art of free-running and our other programs by
            clicking the links below.
          </div>
        </div>
      </div>
      <!--Div holding site links with images-->
      <div class="ui vertical stripe quote segment site-img-bg">
        <div class="ui equal width stackable internally grid">
          <div class="center aligned row">
            <!--Spy School Site-->
            <div class="column">
              <div class="ui big image dimmable blurring rounded">
                <div class="ui inverted dimmer">
                  <div class="content">
                    <h1 class="img-site-h1-color">
                      TO BE A SPY YOU MUST LEARN TO THINK LIKE A SPY
                    </h1>
                    <p class="img-site-font-color">
                      Double '00' is an elite organization of Belleville's very
                      own best junior spies, trained to stop villains and defend
                      justice! Whether we’re cracking codes, building gadgets,
                      ninja training, or becoming masters of disguise - our
                      junior agents find new ways every day to build spirit and
                      imagination. After all, someone has to keep the streets of
                      Belleville safe! Why not you?
                    </p>
                    <div class="ui secondary large button">
                      <a target="_blank" href="https://www.double00.ca/"
                        >Visit Double 00 Spy School</a
                      >
                    </div>
                  </div>
                </div>
                <img
                  class="ui medium image change centered rounded"
                  src="images\double00linkimg.jpeg"
                />
              </div>
              <h3>Double 00 Spy School</h3>
            </div>

            <!--Parkour Site-->
            <div class="column">
              <div class="ui big image dimmable blurring rounded">
                <div class="ui inverted dimmer">
                  <div class="content left aligned">
                    <h1 class="img-site-h1-color">
                      JOIN THE REVOLUTION, GET ACTIVE TODAY
                    </h1>
                    <p class="img-site-font-color">
                      Today, parkour has evolved to include running, climbing,
                      swinging, vaulting, rolling, reflex control and even
                      martial arts. It is often used as a means of fitness,
                      adventure, and all around fun! Parkour is an activity that
                      can be practiced alone or with others . The goal is to
                      imagine the potential for navigating your environment by
                      movement around, across, through, over and under its
                      features. ​<br />
                      Join Quinte Parkour today, and start seeing your
                      environment in a whole new way!
                    </p>
                    <div class="ui secondary large button">
                      <a target="_blank" href="https://www.quinteparkour.ca/"
                        >Visit Quinte Parkour</a
                      >
                    </div>
                  </div>
                </div>
                <img
                  class="ui medium image change centered rounded"
                  src="images\kid-parkour.jpg"
                />
              </div>
              <h3>Quinte Parkour</h3>
            </div>
          </div>
        </div>
        <div class="ui divider vertical"></div>
      </div>

      <div class="ui vertical stripe segment">
        <div class="ui text container">
          <h3 class="ui header">Recent News</h3>
          <p>
            Instead of focusing on content creation and hard work, we have
            learned how to master the art of doing nothing by providing massive
            amounts of whitespace and generic content that can seem massive,
            monolithic and worth your attention.
          </p>
          <a class="ui large button">Read More</a>
          <h3 class="ui header">Did We Tell You About Our Bananas?</h3>
          <p>
            Yes I know you probably disregarded the earlier boasts as
            non-sequitur filler content, but its really true. It took years of
            gene splicing and combinatory DNA research, but our bananas can
            really dance.
          </p>
          <a class="ui large button">I'm Still Quite Interested</a>
        </div>
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
                <a href="#" class="item">Home</a>
                <a href="#" class="item">Merchandise</a>
                <a href="Booking.html" class="item">Book A Date</a>
                <a href="#" class="item">Programs</a>
                <a href="ContactUs.html" class="item">Contact</a>
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
