<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication4.Navigation.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="css/Style.css" />
    <script type="text/html" src="../Scripts/jquery-3.4.1.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="slider">
            <div class="slide active">
                <img src="image/1.jpg" alt=""/>
                <div class="info">
                    <h2>Sản Phẩm 1</h2>
                    <p>Tóm tắt sản phẩm 1 có nhiều điểm đặc biệt</p>
                </div>
            </div>
            <div class="slide">
                <img src="image/2.jpg" alt=""/>
                <div class="info">
                    <h2>Sản Phẩm 2</h2>
                    <p>Tóm tắt sản phẩm 2 có nhiều điểm đặc biệt</p>
                </div>
            </div>
            <div class="slide">
                <img src="image/3.jpg" alt=""/>
                <div class="info">
                    <h2>Sản Phẩm 3</h2>
                    <p>Tóm tắt sản phẩm 3 có nhiều điểm đặc biệt</p>
                </div>
            </div>
            <div class="slide">
                <img src="image/4.jpg" alt=""/>
                <div class="info">
                    <h2>Sản Phẩm 4</h2>
                    <p>Tóm tắt sản phẩm 4 có nhiều điểm đặc biệt</p>
                </div>
            </div>
            <div class="slide">
                <img src="image/5.jpg" alt=""/>
                <div class="info">
                    <h2>Sản Phẩm 5</h2>
                    <p>Tóm tắt sản phẩm 5 có nhiều điểm đặc biệt</p>
                </div>
            </div>
            <a href="#" id="prev"><img src="image/prev.png"/></a>
            <a href="#" id="next"><img src="image/next.png"/></a>
        </div>
        <div class="navigation-visibility">
            <div title="0" id="rd1" class="slide-icon active"></div>
            <div title="1" id="rd2" class="slide-icon "></div>
            <div title="2" id="rd3" class="slide-icon "></div>
            <div title="3" id="rd4" class="slide-icon "></div>
            <div title="4" id="rd5" class="slide-icon "></div>
        </div>
        <script type="text/javascript">
            const slider = document.querySelector(".slider");
            const prevBtn = document.querySelector("#prev");
            const nextBtn = document.querySelector("#next");
            const slides = document.querySelectorAll(".slide");
            const numberOfslides = slides.length;
            var sliderNumber = 0;
            const slideIcons = document.querySelectorAll(".slide-icon");
            const numberOfslideIcons = slideIcons.length;
            const rd1 = document.querySelector("#rd1");
            const rd2 = document.querySelector("#rd2");
            const rd3 = document.querySelector("#rd3");
            const rd4 = document.querySelector("#rd4");
            const rd5 = document.querySelector("#rd5");
            var rdd1 = 0;
            var rdd2 = 1;
            var rdd3 = 2;
            var rdd4 = 3;
            var rdd5 = 4;
            nextBtn.addEventListener("click", () => {
                slides.forEach((slide) => {
                    slide.classList.remove("active");
                });
                slideIcons.forEach((slide) => {
                    slide.classList.remove("active");
                });
                sliderNumber++;
                if (sliderNumber > (numberOfslides - 1)) {
                    sliderNumber = 0;
                }
                slides[sliderNumber].classList.add("active");
                slideIcons[sliderNumber].classList.add("active");
            });
            prevBtn.addEventListener("click", () => {
                slides.forEach((slide) => {
                    slide.classList.remove("active");
                });
                slideIcons.forEach((slide) => {
                    slide.classList.remove("active");
                });
                sliderNumber--;
                if (sliderNumber < 0) {
                    sliderNumber = numberOfslides - 1;
                }
                slides[sliderNumber].classList.add("active");
                slideIcons[sliderNumber].classList.add("active");
            });
            var playSlider;
            var reppeater = () => {
                playSlider = setInterval(function () {
                    slides.forEach((slide) => {
                        slide.classList.remove("active");
                    });
                    slideIcons.forEach((slide) => {
                        slide.classList.remove("active");
                    });
                    sliderNumber++;
                    if (sliderNumber > (numberOfslides - 1)) {
                        sliderNumber = 0;
                    }
                    slides[sliderNumber].classList.add("active");
                    slideIcons[sliderNumber].classList.add("active");
                }, 4000)
            };
            reppeater();
            slider.addEventListener("mouseover", () => {
                clearInterval(playSlider);
            });
            slider.addEventListener("mouseout", () => {
                reppeater();
            });
            slideIcons.forEach((slide) => {
                slide.addEventListener("click", () => {
                    slides.forEach((slide) => {
                        slide.classList.remove("active");
                    });
                    /*console.log(slide.title);*//*in thẻ title*/
                    slideIcons.forEach((slide) => {
                        slide.classList.remove("active");
                    });
                    slides[slide.title].classList.add("active");
                    slideIcons[slide.title].classList.add("active");
                });
            })
            
        </script>
    </form>
</body>
</html>
