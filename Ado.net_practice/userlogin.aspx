<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="Ado.net_practice.userlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 align="center">Login Details</h2>
            <table align="center">
                <tr>
                    <td>User Name: </td>
                    <td>
                        <asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtuser" ErrorMessage="Please enter username" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>PassWord: </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtpass" ErrorMessage="please enter password" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
