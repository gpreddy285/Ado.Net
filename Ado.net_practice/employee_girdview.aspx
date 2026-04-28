<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee_girdview.aspx.cs" Inherits="Ado.net_practice.draganddropof_gridview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        Employee Name :
                    </td>
                    <td>
                        <asp:TextBox ID="txtempname" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Employee Salary :
                    </td>
                    <td>
                        <asp:TextBox ID="txtempsalary" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:GridView ID="grdemp" runat="server" AutoGenerateColumns="false">
                            <Columns>
                                <asp:TemplateField HeaderText="Employee_Name">
                                    <ItemTemplate>
                                        <asp:TextBox ID="txtgrdemp" runat="server" Text=""></asp:TextBox>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
