<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HistoryAccount.aspx.cs" Inherits="ProjectCSharpCGV.View.Accountxx.HistoryAccount" %>

<asp:Content ID="Content2" ContentPlaceHolderID="plCss" runat="server">
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="contentBody" runat="server">
    <form runat="server" id="form1">
        <!-- code font end here -->
        <h3 style="text-align: center;">View History Films</h3>
        <div style="padding-left: 20%; padding-right: 20px; padding-top:10%;" class="table">
            <table style="width: 80%;" border="2">
                <tr>
                    <th>STT</th>
                    <th>Name Film</th>
                    <th>Image</th>
                </tr>
                <% int i = 0;
                    foreach (ProjectCSharpCGV.Model.Films f in list)
                    {%>
                <tr>
                    <td><%=i++ %></td>
                    <td><%=f.Name %></td>
                    <td><img src="<%=f.Image %>" /></td>
                </tr>

                   <% }%>
                
                
            </table>

        </div>
    </form>
</asp:Content>
