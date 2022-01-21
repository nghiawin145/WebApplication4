<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="slider_HthiSanPham.aspx.cs" Inherits="WebApplication4.vuot.slider_HthiSanPham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <link rel="stylesheet" href="css/slider_HthiSP.css" />

    <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1" />
    <!-- Link Swiper's CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <link rel="stylesheet" href="css/swiper.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            
            <!-- Swiper -->
            <div class="swiper mySwiper">
                <h2 class="title">Sản Phẩm Hot <i class="bi bi-alarm-fill"></i></h2><%--Sửa--%>
                <div class="swiper-wrapper">
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div class="swiper-slide">
                                <div class="product_infor-item">
                                    <div class="product__infor-img">
                                        <img src="<%# Eval("HinhAnh") %>" alt="" />
                                        <div class="over__lay">
                                            <a class="btn__buy" href="<%# Eval("URL") %>">BUY NOW</a>
                                        </div>
                                    </div>
                                    <div class="product__infor-detail">
                                        <h4 class="product__name"><%# Eval("tenSP") %></h4>
                                        <div class="product__price">
                                            <h5 class="product__price-initial"><%# Eval("giagiam") %></h5>
                                            <h5 class="product__price-discout"><%#: string.Format("{0:N0}",Eval("gia"))%></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </ItemTemplate>
                    </asp:Repeater>

                    <%--<div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 2</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">ÁSản phẩm 3</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 4</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 5</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 6</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 7</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 7</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 7</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="product_infor-item">
                            <div class="product__infor-img">
                                <img src="../Navigation/image/Connan_Tap4.jpg" alt="" />
                                <div class="over__lay">
                                    <a class="btn__buy" href="#">BUY NOW</a>
                                </div>
                            </div>
                            <div class="product__infor-detail">
                                <h4 class="product__name">Sản phẩm 7</h4>
                                <div class="product__price">
                                    <h5 class="product__price-initial">850.000NVĐ</h5>
                                    <h5 class="product__price-discout">950.000NVĐ</h5>
                                </div>
                            </div>
                        </div>
                    </div>--%>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:NhapConnectionString %>' SelectCommand="SELECT TOP (9) SanPham.* FROM SanPham ORDER BY id DESC"></asp:SqlDataSource>
                </div>

                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
                <div class="swiper-pagination"></div>
            </div>


            <!-- Swiper JS -->
            <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
            <div class="col-md-12 product1">
                <h2 class="title">Sản Phẩm Thông Dụng</h2><%--Sửa--%>
                <div class="bottom-product">
                    <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
                        <%--simpleCart_shelfItem--%>
                    <%--<div class="flexx">
                                <div class="col-md-2 bottom-cd sanpham">
                                    
                                    <div class="product-at ">
                                        <a href="#">
                                            <img class="img-responsive" src="../Navigation/image/Doraemon_Tap2.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                            <div class="pro-grid">
                                                <span class="buy-in">Chi Tiết</span>
                                            </div>
                                        </a>
                                    </div>
                                    <p class="tun"><%# Eval("tenSP") %></p>
                                    <a href="#" class="item_add">
                                        <p class="number item_price"><%# Eval("gia") %></p>
                                    </a>
                                    <br />
                                </div>
                                <div class="col-md-2 bottom-cd sanpham">
                                    <div class="product-at ">
                                        <a href="#">
                                            <img class="img-responsive" src="../Navigation/image/Connan_Tap4.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                            <div class="pro-grid">
                                                <span class="buy-in">Chi Tiết</span>
                                            </div>
                                        </a>
                                    </div>
                                    <p class="tun">TenSP</p>
                                    <a href="#" class="item_add">
                                        <p class="number item_price">DonGia</p>
                                    </a>
                                    <br />
                                </div>
                            </div> --%>
                        <ItemTemplate>
                            <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="<%# Eval("HinhAnh") %>" alt="" >
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun"><%# Eval("tenSP") %></p>
                        <a href="#" class="item_add">
                            <p class="number item_price"><%# Eval("gia") %></p>
                        </a>
                        <br />
                    </div>

                        </ItemTemplate>
                    </asp:Repeater>
                   
                    <%--<div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Doraemon_Tap2.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                            
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Doraemon_Tap2.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                            
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap4.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                                
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                                    
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                                        
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>
                    <div class="col-md-2 bottom-cd sanpham">
                        <div class="product-at ">
                            <a href="#">
                                <img class="img-responsive" src="../Navigation/image/Connan_Tap1.jpg" alt="" style="width: 200px; height: 250px; margin-left: auto; margin-right: auto">
                                <div class="pro-grid">
                                    <span class="buy-in">Chi Tiết</span>
                                </div>
                            </a>
                        </div>
                        <p class="tun">TenSP</p>
                        <a href="#" class="item_add">
                            <p class="number item_price">DonGia</p>
                        </a>
                        <br />
                    </div>--%>
                                            
                    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:NhapConnectionString %>' SelectCommand="SELECT TOP (12) id, tenSP, gia, giagiam, HinhAnh, NgayNhap, URL, MaLSP FROM SanPham WHERE (id <= (SELECT TOP (1) id FROM SanPham AS newss_1 ORDER BY id DESC) - 9) ORDER BY id DESC"></asp:SqlDataSource>
                    
                        
                </div>
            </div>
        </div>
        <!-- Initialize Swiper -->
        <script>
            var swiper = new Swiper(".mySwiper", {
                slidesPerView: 1,
                spaceBetween: 10,
                pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                },
                breakpoints: {
                    640: {
                        slidesPerView: 2,
                        spaceBetween: 20,
                    },
                    868: {
                        slidesPerView: 4,
                        spaceBetween: 40,
                    },
                    1024: {
                        slidesPerView: 6,/*5*/
                        spaceBetween: 40,/*50*/
                    },
                },
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev',
                },
            });

        </script>
        <%--slider--%>
        
    </form>
</body>
</html>
