<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailMovie.aspx.cs" Inherits="ProjectCSharpCGV.View.Movies.DetailMovie" %>

<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link href="../../Content/colobox.css" rel="stylesheet" />
    <link href="../../Content/custom-cgv.css" rel="stylesheet" />
    <link href="../../Content/g-erp-cgv.css" rel="stylesheet" />
    <link href="../../Content/madisonisland.css" rel="stylesheet" />
    <link href="../../Content/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">

        <div class="col-main">
            <div style="display: none;">
                array(3) {
  [0]=&gt;
  string(33) "cinemas_product_20009200_20200728"
  [1]=&gt;
  string(33) "cinemas_product_20009200_20200729"
  [2]=&gt;
  string(33) "cinemas_product_20009200_20200804"
}
            </div>
            <div id="messages_product_view"></div>
            <div class="product-view">
                <div class="product-essential">
                    <div class="page-title product-view">
                        <span class="h1">Nội Dung Phim</span>
                    </div>

                    <div class="product-name-reponsive">
                        <h1><%= Film.Name %></h1>
                    </div>

                    <div class="product-img-box">
                        <div class="product-image product-image-zoom zoom-available">
                            <div class="product-image-gallery">
                                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/<%=Film.Image %>" />
                            </div>
                        </div>

                    </div>

                    <div class="product-shop">
                        <div class="product-name">
                            <span class="h1"><%= Film.Name %></span>
                        </div>

                        <!-- Build test -->
                        <div class="movie-director movie-info">
                            <label>Đạo diễn: </label>
                            <div class="std"><%= Film.Directors %></div>
                        </div>
                        <div class="movie-actress movie-info">
                            <label>Diễn viên:</label>
                            <div class="std"><%= Film.Actor %></div>
                        </div>
                        <div class="movie-genre movie-info">
                            <label>Thể loại: </label>
                            <div class="std"><%= Film.Genresx.Name %></div>
                        </div>
                        <div class="movie-release movie-info">
                            <label>Khởi chiếu: </label>
                            <div class="std"><%= Film.ReleaseTime %></div>
                        </div>
                        <div class="movie-actress movie-info">
                            <label>Thời lượng: </label>
                            <div class="std"><%= Film.Time %></div>
                        </div>
                        <div class="movie-language movie-info">
                            <label>Ngôn ngữ: </label>
                            <div class="std">
                                <%= Film.Language %>
                            </div>
                        </div>
                        <div class="movie-rating movie-rated-web">
                            <label>Rated: </label>
                            <div class="std"><%= Film.Ratedx.Title %></div>
                        </div>

                    </div>

                    <div class="movie-detail-fb-booking">
                        <div class="add-to-cart-wrapper ">
                            <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20009200');">
                                <span><span>Mua vé</span></span>
                            </button>
                        </div>
                    </div>


                    <div class="clearer"></div>
                </div>


            </div>

            <%--            <div id="loading-mask" style="left: -2px; top: 0px; display: none; z-index: 999999;">
                <p class="loader" id="loading_mask_loader">
                    <img src="https://www.cgv.vn/skin/frontend/cgv/default/images/ajax-loader.gif" alt="Loading...">
                    <br>
                    Đang tải thông tin...
                </p>
            </div>--%>

            <style type="text/css">
                #cboxLoadedContent .quick-booking > .tabs-cgv-movie-view-date > * {
                    padding: 20px;
                    margin: 0px;
                }

                .yamahawhynot h4, .lgcinema h4 {
                    color: red;
                    font-weight: bold !important;
                }
            </style>

            <script type="text/javascript">
                //<![CDATA[
                function Quickbooking(obj) {
                    $j.ajax({
                        type: 'post',
                        url: 'https://www.cgv.vn/default/cinemas/product/ajaxschedule/',
                        data: 'id=' + obj,
                        beforeSend: function () {
                            // $j.colorbox();
                            $j('#loading-mask').show();
                        },
                    }).done(function (result) {
                        var html = '<div class="product-collateral toggle-content tabs tabs-cgv-movie-view-date">';
                        html += '<dl id="collateral-tabs" class="collateral-tabs">';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200728\');">';
                        html += '<span>07</span>';
                        html += '<em>Tue</em>';
                        html += '<strong>28</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += result;
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200729\');">';
                        html += '<span>07</span>';
                        html += '<em>Wed</em>';
                        html += '<strong>29</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200730\');">';
                        html += '<span>07</span>';
                        html += '<em>Thu</em>';
                        html += '<strong>30</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200731\');">';
                        html += '<span>07</span>';
                        html += '<em>Fri</em>';
                        html += '<strong>31</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200801\');">';
                        html += '<span>08</span>';
                        html += '<em>Sat</em>';
                        html += '<strong>01</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200802\');">';
                        html += '<span>08</span>';
                        html += '<em>Sun</em>';
                        html += '<strong>02</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200803\');">';
                        html += '<span>08</span>';
                        html += '<em>Mon</em>';
                        html += '<strong>03</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200804\');">';
                        html += '<span>08</span>';
                        html += '<em>Tue</em>';
                        html += '<strong>04</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200805\');">';
                        html += '<span>08</span>';
                        html += '<em>Wed</em>';
                        html += '<strong>05</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200806\');">';
                        html += '<span>08</span>';
                        html += '<em>Thu</em>';
                        html += '<strong>06</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200807\');">';
                        html += '<span>08</span>';
                        html += '<em>Fri</em>';
                        html += '<strong>07</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200808\');">';
                        html += '<span>08</span>';
                        html += '<em>Sat</em>';
                        html += '<strong>08</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200809\');">';
                        html += '<span>08</span>';
                        html += '<em>Sun</em>';
                        html += '<strong>09</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '<dt class="tab">';
                        html += '<div class="day" onclick="getSelectDay(' + obj + ', \'20200810\');">';
                        html += '<span>08</span>';
                        html += '<em>Mon</em>';
                        html += '<strong>10</strong>';
                        html += '</div>';
                        html += '</dt>';

                        html += '<dd class="tab-container">';
                        html += '<div class="tab-content showtimes">';
                        html += '</div>';
                        html += '</dd>';
                        html += '</dl>';
                        html += '</div>';

                        $j.colorbox({ html: '<div class="product-view quick-booking cgv-schedule-popup">' + html + '</div>', width: "88%", height: "88%", fixed: true, modal: false });
                        togglecontent('cgv-schedule-popup .tabs-cgv-movie-view-date');
                        togglecontent('cgv-schedule-popup .tabs-cgv-movie-cites');
                        togglecontent('cgv-schedule-popup .tabs-cgv-movie-type');
                        $j('#loading-mask').hide();
                    });
                }

                function getSelectDay(id, dy) {
                    $j.ajax({
                        type: 'post',
                        url: 'https://www.cgv.vn/default/cinemas/product/ajaxschedule/',
                        data: 'id=' + id + '&dy=' + dy,
                        beforeSend: function () {
                            $j('#loading-mask').show();
                            $j('dd.current .showtimes').empty();
                        },
                    }).done(function (result) {
                        $j('dd.current .showtimes').html(result);
                        togglecontent('cgv-schedule-popup .tabs-cgv-movie-cites');
                        togglecontent('cgv-schedule-popup .tabs-cgv-movie-type');
                        $j('#loading-mask').hide();
                    });
                }

                var productname = "2728_BÁN ĐẢO PENINSULA";
                smartech('dispatch', 'Movie_Info_Web', { 'productname': productname });
//]]>
            </script>
        </div>
    </form>
</asp:Content>
