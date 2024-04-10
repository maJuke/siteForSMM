<!DOCTYPE html>
<html>
<head>
    <title> SMM SITE PAGE </title>
</head>

<style>
  * {box-sizing: border-box}
  body {font-family: Verdana, sans-serif; margin:0}
  .example-slides {display: none}
  img {vertical-align: middle;}

  .slideshow-examples-container {
    max-width: 390px;
    max-height: 840px;
    position: relative;
    margin: auto;
  }

  .prev, .next {
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
    background-color: rgba(0,0,0,0.2);
  }

  .next {
    right: 0;
    border-radius: 3px 0 0 3px;
  }

  .prev:hover, .next:hover {
    background-color: rgba(0,0,0,0.8);
  }

  .dot {
    cursor: pointer;
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbb;
    border-radius: 50%;
    display: inline-block;
    transition: background-color 0.6s ease;
  }

  .active, .dot:hover {
    background-color: #717171;
  }

  .fade {
    animation-name: fade;
    animation-duration: 1.5s;
  }

  @keyframes fade {
    from {opacity: .4}
    to {opacity: 1}
  }

  @media only screen and (max-width: 300px) {
    .prev, .next {font-size: 11px}
  }

</style>

<body>
<h1> SMM SITE HEADER 1</h1>
<h4> LIST OF EXAMPLES:</h4>

<div class="slideshow-examples-container">
  <#list examples as example>
    <div class ="example-slides fade">
      <img src="/examples/${example.id}" style="width:390px" height="844px"/>
    </div>
  </#list>
  <a class="prev" onclick="plusSlides(-1)">❮</a>
  <a class="next" onclick="plusSlides(1)">❯</a>
</div>


<script>
let slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  let i;
  let slides = document.getElementsByClassName("example-slides");
  let dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
    slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
    dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
}
</script>

</body>
</html>