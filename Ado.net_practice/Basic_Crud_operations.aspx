<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Basic_Crud_operations.aspx.cs" Inherits="Ado.net_practice.Basic_Crud_operations" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 align="center" style="color:blue;">CRUD Operations</h2>
            <table align="center">
                <tr>
                    <td>User Name :</td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvuser" runat="server" ControlToValidate="txtusername" ErrorMessage="User Name is Required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                   <td>PassWord :  </td>
                    <td>
                        <asp:TextBox ID="txtpass" runat="server" ></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvpass" runat="server" ControlToValidate="txtpass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btninsert" runat="server" Text="INSERT" OnClick="btninsert_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnupdate" runat="server" Text="UPDATE" OnClick="btnupdate_Click" />
                    </td>
                    </tr>
                <tr>
                    <td>
                        <asp:Button ID="btndelete" runat="server" Text="DELETE" OnClick="btndelete_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        Search
                    </td>
                    <td>
                        <asp:TextBox ID="txtsearch" runat="server" PlaceHolder="Type something"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnsearch" runat="server" Text="Search" OnClick="btnsearch_Click" />
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:GridView ID="grdcrud" runat="server"></asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
