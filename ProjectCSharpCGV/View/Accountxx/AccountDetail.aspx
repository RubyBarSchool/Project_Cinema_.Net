<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AccountDetail.aspx.cs" Inherits="ProjectCSharpCGV.View.Accountxx.AccountDetail" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <!-- code font end here -->
        <h1 style="text-align:center;" >Detail Account</h1>
        <div style="text-align:center;">

       
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtName" placeholder="Name" runat="server"></asp:TextBox><br />
                             <br/>
                             <asp:Label ID="Label2" runat="server" Text="Phone number"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtPhone" placeholder="Phone number" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtEmail" placeholder="Email" runat="server"></asp:TextBox><br />
                            <br />
                            <br />
                             <asp:Label ID="Label3" runat="server" Text="Username"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"></asp:TextBox><br />
                             <br/>
                            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label><br />
                            
                            <asp:TextBox ID="txtPass" placeholder="Password" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:Label ID="Label6" runat="server" Text="Date of birthday "></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtNgaySinh" runat="server"></asp:TextBox>
                            
                            <br />
                            <br />
                            <asp:Label ID="Label11" runat="server" Text="Gender"></asp:Label>
                          
                            <asp:RadioButton ID="rdMale"  runat="server" GroupName="gender" /><asp:Label ID="Label9" runat="server" Text="Male"></asp:Label>
                            <asp:RadioButton ID="rdFemale" runat="server" GroupName="gender" /><asp:Label ID="Label10" runat="server" Text="Female"></asp:Label><br /><br />
                            
                            <asp:Label ID="Label7" runat="server" Text="Region"></asp:Label><br />
                            <br />
                            <asp:DropDownList ID="drRegion" runat="server"></asp:DropDownList><br />
                            <br />
                             <asp:Label ID="Label8" runat="server" Text="Perfect Site "></asp:Label><br />
                            <br />
                             <asp:DropDownList ID="drSite" runat="server"></asp:DropDownList><br />
                            <br />

                            <asp:Button ID="btSave" runat="server" OnClick="btSave_Click" Text="Save" />
                            
    </div>
 
    </form>
</asp:Content>
