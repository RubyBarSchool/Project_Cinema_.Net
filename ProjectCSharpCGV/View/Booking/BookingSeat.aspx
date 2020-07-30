<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingSeat.aspx.cs" Inherits="ProjectCSharpCGV.View.Booking.BookingSeat" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <asp:Repeater ID="rptView" runat="server" OnItemCommand="rptView_ItemCommand">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Button runat="server"  Text=<%# Eval("Col1") %> /></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</asp:Content>
