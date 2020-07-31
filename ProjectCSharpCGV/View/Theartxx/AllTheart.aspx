<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllTheart.aspx.cs" Inherits="ProjectCSharpCGV.View.Theartxx.AllTheart" %>

<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link href="../../Content/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
  <form id="all" runat="server">
        <div>
            <ul class="products-grid products-grid--max-6-col first last odd" style="background-color: antiquewhite;">
                <% foreach (ProjectCSharpCGV.Model.Area ar in listA)
                    {%>
                <li>
                    <div style="text-align: center;">
                        <p style="font-size: medium"><a href="AllTheart.aspx?ID=<%=ar.ID %>"><%= ar.Name %></a></p>
                    </div>
                </li>
                <%}%>
            </ul>
            <table border="1">
                <tr>
                    <th style="text-align:center">Name</th>
                    <th style="text-align:center">Place</th>
                    <th style="text-align:center">Fax</th>
                    <th style="text-align:center">Hotline</th>
                </tr>
                <% foreach (ProjectCSharpCGV.Model.Theart at in listthread)
                    { %>
                <tr>
                    <td>
                        <p><a><%= at.Name %></a></p>
                    </td>

                    <td>
                        <p><a><%= at.Place %></a></p>
                    </td>

                    <td>
                        <p><a><%= at.Fax %></a></p>
                    </td>

                    <td>
                        <p><a><%= at.Hottline %></a></p>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
    </form>
</asp:Content>
