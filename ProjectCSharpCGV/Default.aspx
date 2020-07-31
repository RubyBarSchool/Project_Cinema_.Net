<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjectCSharpCGV._Default" %>

<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link href="Content/HADefault.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <div class="main-container col1-layout" id="nen">
        <div class="main">
            <div class="col-main">
                <div class="slideshow-container">
                    <ul id="home_big_banner" class="slideshow" style="overflow: hidden;">
                        <li class="cycle-slide cycle-sentinel" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: block; visibility: hidden;">
                            <a href="#" style="visibility: hidden;">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/j/u/justice_league_milo_980x448.jpg" style="visibility: hidden;">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 97; opacity: 1; display: block; visibility: hidden;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/j/u/justice_league_milo_980x448.jpg">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 96; visibility: hidden; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/9/8/980_x_448_1.jpg">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 95; visibility: hidden; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/9/8/980-px-x-448-px-.jpg">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 94; visibility: hidden; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/k/i/kichi_voucher_980x448.jpg">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 93; visibility: hidden; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/g/o/gom-com-bo-980x448_1.jpg">
                            </a>
                        </li>
                        <li class="cycle-slide" style="position: absolute; top: 0px; left: 0px; z-index: 92; visibility: hidden; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/i/viettel-pay-980x448.png">
                            </a>
                        </li>
                        <li class="cycle-slide cycle-slide-active" style="position: absolute; top: 0px; left: 0px; z-index: 99; visibility: visible; opacity: 1; display: block;">
                            <a href="#">
                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/9/8/980x448_7_.jpg">
                            </a>
                        </li>
                    </ul>
                    <div class="slideshow-pager home_big_banner_pager">&nbsp;<span class="pager-box"></span><span class="pager-box"></span><span class="pager-box"></span><span class="pager-box"></span><span class="pager-box"></span><span class="pager-box"></span><span class="pager-box cycle-pager-active"></span></div>
                    <span class="slideshow-prev home_big_banner_prev">&nbsp;</span>
                    <span class="slideshow-next home_big_banner_next">&nbsp;</span>
                </div>

                <div class="home-movie-selection">
                    <div style="text-align: center; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                        <h2>MOVIE SELECTION</h2>
                    </div>

                    <div class="slideshow-containe-movier feature_slide_show_480_767">
                        <ul class="feature_slide_show" style="position: relative; overflow: hidden;">
                            <li class="poster-film film-lists item cycle-slide active cycle-sentinel" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: block; visibility: hidden;">
                                <span class="nmovie-rating nmovie-rating-c18" style="visibility: hidden;">C18</span>
                                <img class="product-img" src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/p/o/poster_peninsula_1.jpg" alt="BÁN ĐẢO PENINSULA" style="visibility: hidden;">
                                <input type="hidden" value="movie-trailer-2728" style="visibility: hidden;">
                                <div class="feature_film_content" style="visibility: hidden;">
                                    <h3 style="visibility: hidden;">BÁN ĐẢO PENINSULA</h3>
                                    <a title="Xem chi tiết" class="button" href="https://www.cgv.vn/default/peninsula.html" style="visibility: hidden;">Xem chi tiết</a>
                                    <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20009200');" style="visibility: hidden;"><span style="visibility: hidden;"><span style="visibility: hidden;">Mua vé</span></span></button>
                                </div>
                                <div class="play-button" style="visibility: hidden;">
                                    <span style="visibility: hidden;"><span style="visibility: hidden;">Play</span></span>
                                    <div style="display: none; visibility: hidden;">
                                        <span class="movie-trailer" style="visibility: hidden;">https://www.youtube.com/embed/DbDdy3j1jBU?rel=0&amp;showinfo=0&amp;autoplay=1</span>
                                    </div>
                                </div>
                            </li>
                            <div class="cycle-carousel-wrap" style="margin: 0px; padding: 0px; top: 0px; left: 0px; position: absolute; white-space: nowrap;">
                                <li class="poster-film film-lists item cycle-slide active" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: inline-block; visibility: visible;">
                                    <span class="nmovie-rating nmovie-rating-c18">C18</span>
                                    <img class="product-img" src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/p/o/poster_peninsula_1.jpg" alt="BÁN ĐẢO PENINSULA">
                                    <input type="hidden" value="movie-trailer-2728">
                                    <div class="feature_film_content">
                                        <h3>BÁN ĐẢO PENINSULA</h3>
                                        <a title="Xem chi tiết" class="button" href="#">Xem chi tiết</a>
                                        <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20009200');"><span><span>Mua vé</span></span></button>
                                    </div>
                                    <div class="play-button">
                                        <span><span>Play</span></span>
                                        <div style="display: none">
                                            <span class="movie-trailer">https://www.youtube.com/embed/DbDdy3j1jBU?rel=0&amp;showinfo=0&amp;autoplay=1</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="poster-film film-lists item cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
                                    <span class="nmovie-rating nmovie-rating-c18">C18</span>
                                    <img class="product-img" src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/p/o/poster_dtok_3_1__1.jpg" alt="DINH THỰ OAN KHUẤT">
                                    <input type="hidden" value="movie-trailer-2848">
                                    <div class="feature_film_content">
                                        <h3>DINH THỰ OAN KHUẤT</h3>
                                        <a title="Xem chi tiết" class="button" href="#">Xem chi tiết</a>
                                        <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20008800');"><span><span>Mua vé</span></span></button>
                                    </div>
                                    <div class="play-button">
                                        <span><span>Play</span></span>
                                        <div style="display: none">
                                            <span class="movie-trailer">https://www.youtube.com/embed/-nYmaSu952o?rel=0&amp;showinfo=0&amp;autoplay=1</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="poster-film film-lists item cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 97; display: inline-block;">
                                    <span class="nmovie-rating nmovie-rating-p">p</span>
                                    <img class="product-img" src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/p/i/pinocchio_1.jpg" alt="CẬU BÉ NGƯỜI GỖ PINOCCHIO">
                                    <input type="hidden" value="movie-trailer-2832">
                                    <div class="feature_film_content">
                                        <h3>CẬU BÉ NGƯỜI GỖ PINOCCHIO</h3>
                                        <a title="Xem chi tiết" class="button" href="#">Xem chi tiết</a>
                                        <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20008200');"><span><span>Mua vé</span></span></button>
                                    </div>
                                    <div class="play-button">
                                        <span><span>Play</span></span>
                                        <div style="display: none">
                                            <span class="movie-trailer">https://www.youtube.com/embed/S6_QeVUDxwY?rel=0&amp;showinfo=0&amp;autoplay=1</span>
                                        </div>
                                    </div>
                                </li>
                                <li class="poster-film film-lists item cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 96; display: inline-block;">
                                    <span class="nmovie-rating nmovie-rating-c16">C16</span>
                                    <img class="product-img" src="https://www.cgv.vn/media/catalog/product/cache/1/small_image/240x388/dd828b13b1cb77667d034d5f59a82eb6/o/u/outback_-_chuy_n_du_l_ch_ch_t_ch_c_-_payoff_poster_1__1.jpg" alt="CHUYẾN DU LỊCH CHẾT CHÓC">
                                    <input type="hidden" value="movie-trailer-2860">
                                    <div class="feature_film_content">
                                        <h3>CHUYẾN DU LỊCH CHẾT CHÓC</h3>
                                        <a title="Xem chi tiết" class="button" href="#">Xem chi tiết</a>
                                        <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20009400');"><span><span>Mua vé</span></span></button>
                                    </div>
                                    <div class="play-button">
                                        <span><span>Play</span></span>
                                        <div style="display: none">
                                            <span class="movie-trailer">https://www.youtube.com/embed/SKI4_NvlAxU?rel=0&amp;showinfo=0&amp;autoplay=1</span>
                                        </div>
                                    </div>
                                </li>
                            </div>
                        </ul>
                        <span class="feature_slide_show_prev disabled">&lt;&lt;</span>
                        <span class="feature_slide_show_next">&gt;&gt;</span>
                    </div>
                </div>

                <div class="product-collateral toggle-content tabs home-event">
                    <div style="text-align: center; font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif">
                        <h2>EVENT</h2>
                    </div>

                    <ul class="toggle-tabs">
                        <li class="current"><span>Tin Mới &amp; Ưu Đãi</span></li>
                        <li class="last"><span>Thành Viên CGV</span></li>
                    </ul>
                    <dl id="collateral-tabs" class="collateral-tabs">
                        <dt class="tab current"><span>Tin Mới &amp; Ưu Đãi</span></dt>
                        <dd class="tab-container current">
                            <div class="tab-content">
                                <div class="home-show-event">
                                    <ul class="slide_home_event tinmiui" style="position: relative; overflow: hidden;">
                                        <li class="cycle-slide active cycle-sentinel" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: block; visibility: hidden;">
                                            <a href="#" style="visibility: hidden;">
                                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/n/vnpay-240x201-0.png" style="visibility: hidden;">
                                            </a>
                                        </li>
                                        <div class="cycle-carousel-wrap" style="margin: 0px; padding: 0px; top: 0px; left: 0px; position: absolute; white-space: nowrap;">
                                            <li class="cycle-slide active" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: inline-block; visibility: visible;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/n/vnpay-240x201-0.png">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/k/i/kichi_voucher_240x201_1.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 97; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/i/viettel-pay-240x201.png">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 96; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/s/c/sc-cgv-240x201.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 95; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/h/s/hsbc_cgv_banner_240x201_3.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 94; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/k/m/km-scb-240x210_cgv.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 93; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/u/uu-dai-visa-cgv-24x201.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 92; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/r/s/rsz_late-show-new-122019-240x201_2020_1.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 91; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/n/vnpay-240x201-0.png" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 90; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/v/n/vnpay-240x201-0.png" style="visibility: hidden;">
                                                </a>
                                            </li>
                                        </div>
                                    </ul>
                                    <span class="slide_home_event_prev tinmiui_prev disabled">&lt;&lt;</span>
                                    <span class="slide_home_event_next tinmiui_next">&gt;&gt;</span>
                                </div>
                            </div>
                        </dd>
                        <dt class="tab last"><span>Thành Viên CGV</span></dt>
                        <dd class="tab-container last">
                            <div class="tab-content">
                                <div class="home-show-event">
                                    <ul class="slide_home_event thnhvincgv" style="position: relative; overflow: hidden;">
                                        <li class="cycle-slide active cycle-sentinel" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: block; visibility: hidden;">
                                            <a href="#" style="visibility: hidden;">
                                                <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                            </a>
                                        </li>
                                        <div class="cycle-carousel-wrap" style="margin: 0px; padding: 0px; top: 0px; left: 0px; position: absolute; white-space: nowrap;">
                                            <li class="cycle-slide active" style="position: static; top: 0px; left: 0px; z-index: 100; opacity: 1; display: inline-block; visibility: visible;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 99; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/h/a/happywednesday240x201_1.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 97; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/c/u/culture-240_1.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 96; display: inline-block;">
                                                <a href="#">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/c/g/cgv-crm-team-membership-launch-240x201.jpg">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 95; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 94; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 93; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 92; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 91; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 90; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 89; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 88; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 87; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 86; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 85; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 84; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 83; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 82; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 81; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 80; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 79; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                            <li class="cycle-sentinel cycle-slide" style="position: static; top: 0px; left: 0px; z-index: 78; display: inline-block;">
                                                <a href="#" style="visibility: hidden;">
                                                    <img src="https://www.cgv.vn/media/banner/cache/1/b58515f018eb873dafa430b6f9ae0c1e/u/2/u22_240x201.jpg" style="visibility: hidden;">
                                                </a>
                                            </li>
                                        </div>
                                    </ul>
                                    <span class="slide_home_event_prev thnhvincgv_prev disabled">&lt;&lt;</span>
                                    <span class="slide_home_event_next thnhvincgv_next">&gt;&gt;</span>
                                </div>
                            </div>
                        </dd>
                    </dl>
                </div>
                <div class="home-promotion-card">
                    <ul class="promos">
                        <li class="col-ad">
                            <div class="format-border">
                                <a href="https://www.cgv.vn/default/newsoffer/dream-party-package/">
                                    <img alt="" src="https://www.cgv.vn/media/wysiwyg/packages/214x245.jpg"></a>
                            </div>
                        </li>
                        <li class="col-hd">
                            <div class="format-border">
                                <a href="https://www.cgv.vn/default/newsoffer/u22-vn/">
                                    <img src="https://www.cgv.vn/media/wysiwyg/2019/DEC2019/U22_496x247.jpg"></a>
                            </div>
                        </li>
                        <li class="col-ad">
                            <div class="format-border">
                                <a href="https://www.cgv.vn/default/newsoffer/late-show-vn/" target="_blank">
                                    <img src="https://www.cgv.vn/media/wysiwyg/2019/DEC2019/LATE-SHOW-NEW-12.2019-214x245.jpg"></a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


