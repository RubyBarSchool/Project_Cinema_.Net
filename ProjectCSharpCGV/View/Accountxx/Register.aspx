<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="ProjectCSharpCGV.View.Accountxx.Register" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <!-- code font end here -->
        <div class="container">
            <h2>Register</h2>
            <!-- Button to Open the Modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Click Here!
            </button>
            <asp:Label ID="txtThongBao" runat="server" Text="Label"></asp:Label>

            <!-- The Modal -->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align:center;" class="modal-title">Register for me</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>
                        
                        <!-- Modal body -->
                        <div class="modal-body">
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
                            
                            <asp:Button ID="btRegister" runat="server" OnClick="btRegister_Click" Text="Register" />
                            <asp:Label ID="thongBao" runat="server" Text="Please enter this form!"></asp:Label>
                        </div>

                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </form>
</asp:Content>
