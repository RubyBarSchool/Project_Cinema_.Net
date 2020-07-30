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
        <div class="main-container col1-layout">
            <div class="main">
                <div class="col-main">
                    <div class="product-view">
                        <div class="product-essential">
                            <div class="page-title product-view">
                                <span class="h1">Nội Dung Phim</span>
                            </div>

                            <div class="product-name-reponsive">
                                <h1><%= Films.Name %></h1>
                            </div>

                            <div class="product-img-box">
                                <div class="product-image product-image-zoom zoom-available">
                                    <div class="product-image-gallery">
                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/<%=Films.Image%>" />
                                    </div>
                                </div>
                            </div>

                            <div class="product-shop">
                                <div class="product-name">
                                    <span class="h1"><%= Films.Name %></span>
                                </div>

                                <!-- Build test -->
                                <div class="movie-director movie-info">
                                    <label>Đạo diễn: </label>
                                    <div class="std"><%= Films.Directors %></div>
                                </div>
                                <div class="movie-actress movie-info">
                                    <label>Diễn viên:</label>
                                    <div class="std"><%= Films.Actor %></div>
                                </div>
                                <%--<div class="movie-genre movie-info">
                            <label>Thể loại: </label>
                            <div class="std"><%= Film.Genresx.Name %></div>
                        </div>--%>
                                <div class="movie-release movie-info">
                                    <label>Khởi chiếu: </label>
                                    <div class="std"><%= Films.ReleaseTime %></div>
                                </div>
                                <div class="movie-actress movie-info">
                                    <label>Thời lượng: </label>
                                    <div class="std"><%= Films.Time %></div>
                                </div>
                                <div class="movie-language movie-info">
                                    <label>Ngôn ngữ: </label>
                                    <div class="std">
                                        <%= Films.Language %>
                                    </div>
                                </div>
                            </div>

                            <div class="movie-detail-fb-booking">
                                <div class="add-to-cart-wrapper ">
                                    <button type="button" title="Mua vé" class="button btn-booking" onclick="Quickbooking('20009200');">
                                        <span><span>Mua vé</span></span>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>


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
                </div>
            </div>
        </div>
    </form>
</asp:Content>
