<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SpecialTheart.aspx.cs" Inherits="ProjectCSharpCGV.View.Theart.SpecialTheart" %>

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
                    <div class="page-title category-title" style="text-align: center;">
                        <h1>Rạp Đặc Biệt</h1>
                    </div>
                    <div class="category-products cgv-movies" style="height:1770px;">
                        <ul class="products-grid products-grid--max-2-col first last odd">
                            <!-- code font end here -->
                            <% foreach (ProjectCSharpCGV.Model.TheaterType th in listTheater)
                                {%>
                            <li class="film-lists item last">
                                <div class="product-images">
                                    <a class="product-image">
                                        <img class="product-collection-image-2760" alt="" src="../../images/<%= th.ImageTitle %>" />
                                    </a>
                                    <div class="movie-technology">
                                    </div>
                                </div>

                                <div class="product-info" style="height: 10px;">
                                    <h2 class="product-name" style="text-align:center;"><a><%= th.Name %></a></h2>
                                    <div class="cgv-movie-info">
                                        <span class="cgv-info-normal"><%= th.Description %></span>
                                    </div>
                                </div>
                            </li>
                            <%}%>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
