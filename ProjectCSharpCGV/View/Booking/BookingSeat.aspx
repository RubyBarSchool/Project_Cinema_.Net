<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookingSeat.aspx.cs" Inherits="ProjectCSharpCGV.View.Booking.BookingSeat" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <asp:Repeater ID="rptView" runat="server" EnableViewState="true" OnItemCommand="rptView_ItemCommand">
            <HeaderTemplate>
                <table>
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td><asp:Button runat="server"   Text=<%# Eval("1") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("2") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("3") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("4") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("5") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("6") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("7") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("8") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("9") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("10") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("11") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("12") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("13") %> /></td>
                    <td><asp:Button runat="server"  Text=<%# Eval("14") %> /></td>
                </tr>
            </ItemTemplate>
            <FooterTemplate>
                </table>
            </FooterTemplate>
        </asp:Repeater>
    </form>
</asp:Content>
