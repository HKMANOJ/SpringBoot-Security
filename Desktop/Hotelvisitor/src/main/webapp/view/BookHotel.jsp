<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
<head>
<meta charset="UTF-8">
<title>Booking</title>
 <style>
      * {
        box-sizing: border-box
      }
      body {
        font-family: Verdana, sans-serif;
        margin: 0
      }
      .mySlides {
        display: none
      }
      img {
        vertical-align: middle;
      }
      .slideshow-container {
        max-width: 1000px;
        position: relative;
        margin: auto;
      }
      /* Next & previous buttons */
      .prev,
      .next {
        cursor: pointer;
        position: absolute;
        top: 50%;
        width: auto;
        padding: 16px;
        margin-top: -22px;
        color: white;
        font-weight: bold;
        font-size: 18px;
        transition: 0.6s ease;
        border-radius: 0 3px 3px 0;
        user-select: none;
      }
      /* Position the "next button" to the right */
      .next {
        right: 0;
        border-radius: 3px 0 0 3px;
      }
      /* On hover, add a black background color with a little bit see-through */
      .prev:hover,
      .next:hover {
        background-color: rgba(0, 0, 0, 0.8);
      }
      /* Caption text */
      .text {
        color: #ffffff;
        font-size: 15px;
        padding: 8px 12px;
        position: absolute;
        bottom: 8px;
        width: 100%;
        text-align: center;
      }
      /* Number text (1/3 etc) */
      .numbertext {
        color: #ffffff;
        font-size: 12px;
        padding: 8px 12px;
        position: absolute;
        top: 0;
      }
      /* The dots/bullets/indicators */
      .dot {
        cursor: pointer;
        height: 15px;
        width: 15px;
        margin: 0 2px;
        background-color: #999999;
        border-radius: 50%;
        display: inline-block;
        transition: background-color 0.6s ease;
      }
      .active,
      .dot:hover {
        background-color: #111111;
      }
      /* Fading animation */
      .fade {
        -webkit-animation-name: fade;
        -webkit-animation-duration: 1.5s;
        animation-name: fade;
        animation-duration: 1.5s;
      }
      /* buttons style*/
      .footer { position: absolute; height: 45px; right: 0; top: 0; left: 0; }

.mtstyle { text-align: center; margin-top: -10px; margin-left:15px; }

.mtlstyle a:link, a:visited, a:active { color: #3399CC; }

.mtlstyle a:link, a:visited, a:active { text-decoration: none; }

.tcard { box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0,   
   0, 0.19); margin-left: -15px; padding:1px; }

.btna { padding: 7px 16px; text-align: center; text-decoration: none;  
   display: inline-block; font-size: 12px; margin: -53px 10px 30px; cursor: 
   pointer; float:right; }

.btn1 { /* Login */ background-color: white; color: black; border: 0px solid 
   #000; font-size: 14px }

.btn2 { /* Login */ background-color: white; color: black; border: 0px solid 
   #000; font-size: 14px }


.btn2:hover { background-color: #39C; color: white; }
.btn1:hover { background-color: #39C; color: white; }

/*box style for text>
*/
.fancy {
  position: relative;
  background-color: #6CD5F7;
  color:black;
  padding: 2rem;
  text-align: center;
  max-width: 200px;
}

.fancy::before {
  content: "";

  position : absolute;
  z-index  : -1;
  bottom   : 15px;
  right    : 5px;
  width    : 50%;
  top      : 80%;
  max-width: 200px;

  box-shadow: 0px 13px 10px black;
  transform: rotate(4deg);
}



      @-webkit-keyframes fade {
        from {
          opacity: .4
        }
        to {
          opacity: 1
        }
      }
      @keyframes fade {
        from {
          opacity: .4
        }
        to {
          opacity: 1
        }
      }
      /* On smaller screens, decrease text size */
      @media only screen and (max-width: 300px) {
        .prev,
        .next,
        .text {
          font-size: 11px
        }
      }
      
      .fancy{
      	margin-left: 40%;
      }
    </style>

</head>
<body>

<div class="footer">
   <div class="mtstyle">
   <div class="mtlstyle">
   <div class="tcard">
 <!--Login-->
<br><br><br><br>
   <a class="btna btn2" href="/">LOG OUT</a>
   <a class="btna btn1" href="/Useraddform">BOOK</a>
     </div>
      </div>
        </div>
          </div>
<br><br><br><br><br><br>
<div class="slideshow-container">
      <div class="mySlides fade">
        <div class="numbertext">1 / 3</div>
        <img src="https://wallpapercave.com/wp/wp5081545.jpg" style="width:100%" alt="image">
        <div class="text">BEST ROOMS</div>
      </div>
      <div class="mySlides fade">
        <div class="numbertext">2 / 3</div>
        <img alt="image" src="https://images.wallpaperscraft.com/image/single/hotel_room_bed_stylish_modern_39745_1920x1200.jpg" style="width:100%">
        <div class="text">BEST ROOMS</div>
      </div>
      <div class="mySlides fade">
        <div class="numbertext">3 / 3</div>
        <img src="https://www.teahub.io/photos/full/17-171923_hd-hotel-room.jpg" style="width:100%" alt="image">
        <div class="text">BEST ROOMS</div>
      </div>
      <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
      <a class="next" onclick="plusSlides(1)">&#10095;</a>
    </div>
    <br>
    <div style="text-align:center">
      <span class="dot" onclick="currentSlide(1)"></span>
      <span class="dot" onclick="currentSlide(2)"></span>
      <span class="dot" onclick="currentSlide(3)"></span>
    </div>
    <script>
      var slideIndex = 1;
      showSlides(slideIndex);
      function plusSlides(n) {
        showSlides(slideIndex += n);
      }
      function currentSlide(n) {
        showSlides(slideIndex = n);
      }
      function showSlides(n) {
        var i;
        var slides = document.getElementsByClassName("mySlides");
        var dots = document.getElementsByClassName("dot");
        if(n > slides.length) {
          slideIndex = 1
        }
        if(n < 1) {
          slideIndex = slides.length
        }
        for(i = 0; i < slides.length; i++) {
          slides[i].style.display = "none";
        }
        for(i = 0; i < dots.length; i++) {
          dots[i].className = dots[i].className.replace(" active", "");
        }
        slides[slideIndex - 1].style.display = "block";
        dots[slideIndex - 1].className += " active";
      }
    </script>
    <br><br>
  <p class="fancy"> STAY WITH US <br>FEEL LIKE HOME</p>
</body>
</html>