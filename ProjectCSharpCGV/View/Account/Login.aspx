<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ProjectCSharpCGV.View.Account.Login" %>
<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1" method="get">
        <!-- code font end here -->
        <div class="container">
            <h2>LOGIN</h2>
            <!-- Button to Open the Modal -->
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Click Here!
            </button>
            <asp:Label ID="thongBaoNgoai" runat="server" Text=""></asp:Label>

            <!-- The Modal -->
            <div class="modal" id="myModal">
                <div class="modal-dialog">
                    <div class="modal-content">

                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 style="text-align:center;" class="modal-title">Login for me</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtEmailAndPhone" placeholder="Username" runat="server"></asp:TextBox><br />
                             <br/>
                             <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                            <br />
                            <asp:TextBox ID="txtPass" placeholder="Password" runat="server"></asp:TextBox><br />
                            <br />
                            <asp:CheckBox ID="cbRemember" runat="server" />
                            <asp:Label ID="Label3" runat="server" Text="Rememeber me"></asp:Label><br />
                            <br />
                            <asp:Button ID="btLogin" runat="server" OnClick="btLogin_Click" Text="Login" />
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
