<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login_gridview.aspx.cs" Inherits="Ado.net_practice.login_gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 align="center" style="color:blue;">User Login Form</h2>
            <table align="center">
                <tr>
                    <td>
                        User Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtusername" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Password :
                    </td>
                    <td>
                        <asp:TextBox ID="txtpassword" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    
                    <td>
                        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grduser" runat="server"
                            AutoGenerateColumns="false" AllowPaging="True"
                            DataKeyNames="userid"
                            OnRowCancelingEdit="grduser_RowCancelingEdit" OnRowEditing="grduser_RowEditing"
                            OnRowUpdating="grduser_RowUpdating"
                            PageSize="5" OnRowDeleting="grduser_RowDeleting" >
                            <Columns>
                                <asp:TemplateField HeaderText="Username">
                                    <ItemTemplate>
                                        <asp:Label ID="lblusername" runat="server" Text='<%# Bind("username")%>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtgrduser" runat="server" Text='<%# Bind("username")%>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Password">
                                    <ItemTemplate>
                                        <asp:Label ID="lblpassword" runat="server" Text='<%#Bind("password") %>'></asp:Label>
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="txtgrdpass" runat="server" Text='<%#Bind("Password") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnedit" runat="server" Text="Edit" CommandName="Edit" />
                                        <asp:Button ID="btndelete" runat="server" Text="Delete" CommandName="Delete" />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:Button ID="btnupdate" runat="server" Text="Update" CommandName="Update" />
                                        <asp:Button ID="btncancel" runat="server" Text="Cancel" CommandName="Cancel" />
                                    </EditItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
