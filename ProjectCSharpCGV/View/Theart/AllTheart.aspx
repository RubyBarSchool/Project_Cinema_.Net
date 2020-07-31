<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AllTheart.aspx.cs" Inherits="ProjectCSharpCGV.View.Theart.AllTheart" %>

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
            <ul>
                <% foreach (ProjectCSharpCGV.Model.Theart at in listthread) { %>
                        <li>
                           <table>
                               <tr>
                                   <th>Name</th>
                                   <th>Dia Diem</th>
                                   <th>fax</th>
                                   <th>Hotline</th>
                               </tr>
                               <tr>
                                   <td><%= at.Name %></td>
                                   <td><%= at.Place %></td>
                                   <td><%= at.Fax %></td>
                                   <td><%= at.Hottline %></td>
                               </tr>
                           </table>
                        </li>
                <% } %>
            </ul>
        </div>
    </form>
</asp:Content>
