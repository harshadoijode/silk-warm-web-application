
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation */
.fade {
  animation-name: fade;
  animation-duration: 1.5s;
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .text {font-size: 11px}
}
</style>
</head>
<body>
<%@ include file="hometabs.html" %>
<center><br>
<br>

<p>About Us</p>

<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <table bgcolor="#000000" width="100%" border="1">
  <tr>
    <td> <img src="images/1.jpg" style="width:100%" height="500"></td>
  </tr>
  <tr>
    <td><div class="text" style="font-size:14px; color:white; background-color:#000000;"> Silk worm rearing is the production of raw silk by means of raising of caterpillars and care of silk worm from the egg stage through completion of cocoons. Sericulture is no more side line activity for the farmer, the cultivation the silk obtained particularly from the mulberry silkworm is a natural fibre used in textile fibres to the extend to be called “The Queen of Textiles.</div>
</td>
  </tr>
</table>
 
  </div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <table bgcolor="#000000"  width="100%" border="1">
  <tr>
    <td> <img src="images/4.jpg" style="width:100%" height="500"></td>
  </tr>
  <tr>
    <td><div class="text" style="font-size:14px; color:white; background-color:#000000;">  First mature worms are picked by hand then a self-mountage frame is hanged very near to silkworm beds. Ripe worms crawl onto the mountage frame. Which is later lifted to hang. It reduces labour cost.The cocoons should be put into cotton bags each weighing about 10kg. They are loosely packed and transported in cool hours of the day (ie. Morning or evening). If transport in larger bags, cocoons will be steamed or crushed. Strong vibration during transportation is harmful because cocoons might be crushed. While transporting cocoons are protected from direct sunlight and rain is also important.</div>
</td>
  </tr>
</table>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <table bgcolor="#000000"  width="100%" border="1">
  <tr>
    <td> <img src="images/3.jpg" style="width:100%" height="500"></td>
  </tr>
  <tr>
    <td><div  class="text" style="font-size:14px; color:white; background-color:#000000;"> The moth emergence is delayed and improper. The moths show clubbed wings. Discolouration of scales may be seen on the abdominal area and rarely black round spots are seen on the abdomen and wings. The scales from wings and abdominal area easily come off. The wings do not stretch fully with distored antennae. The egg laying capacity is poor. if the accessory glands are infected the moth may lay eggs with less gluey substance resulting in detachment from the egg cards .Pebrine spores can be identified in mother moth after oviposition by crushing the female moth and examined under microscope with a magnification of 600. Pebrine spores appear as shining oval bodies.</div>
</td>
  </tr>
</table>
</div>

</div>
<br>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>
</center>
<script>
let slideIndex = 0;
showSlides();

function showSlides() {
  let i;
  let slides = document.getElementsByClassName("mySlides");
  let dots = document.getElementsByClassName("dot");
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";  
  }
  slideIndex++;
  if (slideIndex > slides.length) {slideIndex = 1}    
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

</body>
</html> 
