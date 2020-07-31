<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChoiseCinema.aspx.cs" Inherits="ProjectCSharpCGV.View.Booking.ChoiseCinema" %>

<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <table>
            <tr>
                <td>
                    <span>Slots</span>
                    <span>Films</span>
                </td>
            </tr>
            <% foreach (ProjectCSharpCGV.Model.SlotShow ss in list)
                { %>
            <tr>
                <td>
                    <a href="BookingSeat.aspx?idrap=<%= ss.Theart_Roomx.Theartx.ID %>&idPhong=<%= ss.Theart_Roomx.Roomx.ID %>&idSlot=<%= ss.Slotsx.ID %>&idFilm=<%= ss.Filmsx.ID %>"><%= ss.Slotsx.Note %></a>
                    <span style="width: 200px"><%= ss.Filmsx.Name %></span><br />
                </td>
            </tr>
            <%} %>
        </table>
    </form>
</asp:Content>
