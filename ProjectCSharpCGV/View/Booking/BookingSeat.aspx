<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingSeat.aspx.cs" Inherits="ProjectCSharpCGV.View.Booking.BookingSeat" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link href="../../Content/Truong.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        
        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label><br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Repeater ID="rptView" runat="server" EnableViewState="true" OnItemCommand="rptView_ItemCommand">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css0") %>  Text=<%# Eval("0") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css1") %> Text=<%# Eval("1") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css2") %> Text=<%# Eval("2") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css3") %> Text=<%# Eval("3") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css4") %> Text=<%# Eval("4") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css5") %> Text=<%# Eval("5") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css6") %> Text=<%# Eval("6") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css7") %> Text=<%# Eval("7") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css8") %> Text=<%# Eval("8") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css9") %> Text=<%# Eval("9") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css10") %> Text=<%# Eval("10") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css11") %> Text=<%# Eval("11") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css12") %> Text=<%# Eval("12") %> /></td>
                    <td><asp:Button runat="server" CssClass=<%#  "css"+Eval("css13") %> Text=<%# Eval("13") %> /></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
        <asp:GridView ID="GridView1" runat="server"></asp:GridView>
    </form>
</asp:Content>
