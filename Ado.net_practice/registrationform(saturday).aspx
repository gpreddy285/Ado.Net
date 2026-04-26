<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registrationform(saturday).aspx.cs" Inherits="Ado.net_practice.registrationform_saturday_" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2 align="center" style="color:blue;">Registration Form</h2>
                       <table align="center">
               <tr>
                   <td>First Name : </td>
                   <td>
                       <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfvtxtfname" runat="server" ControlToValidate="txtfname" ErrorMessage="please enter first name" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revtxtfname" runat="server" ControlToValidate="txtfname" ErrorMessage="First name must be alphabets only" ValidationExpression="^[A-Za-z]{3,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td>Last Name :</td>
                   <td>
                       <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvlname" runat="server" ControlToValidate="txtlname" ErrorMessage="please enter last name" ForeColor="Red"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="revlname" runat="server" ControlToValidate="txtlname" ErrorMessage="Last name must be alphabets only" ValidationExpression="^[A-Za-z]{3,20}" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
               </tr>
                           <tr>
                               <td>Gender :</td>
                               <td>
                                   <asp:RadioButtonList ID="rblgender" runat="server" ValidationGroup="gender">
                                       <asp:ListItem>Male</asp:ListItem>
                                       <asp:ListItem>Female</asp:ListItem>
                                   </asp:RadioButtonList>
                               </td>
                           </tr>
                           <tr>
                               <td>Hobbies :</td>
                               <td>
                                   <asp:CheckBoxList ID="cblhobbies" runat="server">
                                       <asp:ListItem Value="cricket">Cricket</asp:ListItem>
                                       <asp:ListItem Value="chess">Chess</asp:ListItem>
                                       <asp:ListItem Value="reading">Reading</asp:ListItem>
                                       <asp:ListItem Value="singing">Singing</asp:ListItem>
                                    
                                   </asp:CheckBoxList>
                               </td>
                           </tr>
               <tr>
                   <td>Email :</td>
                   <td>
                       <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfvemail" runat="server" ControlToValidate="txtemail" ErrorMessage="please enter email" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revemail" runat="server" ControlToValidate="txtemail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ErrorMessage="please enter proper email" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td>PhoneNumber :</td>
                   <td>
                       <asp:TextBox ID="txtpnumber" runat="server"></asp:TextBox>
                       <asp:RequiredFieldValidator ID="rfvpnumber" runat="server" ControlToValidate="txtpnumber" ErrorMessage="please enter Phone number" ForeColor="Red"></asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="revpnumber" runat="server" ControlToValidate="txtpnumber" ErrorMessage="please enter valid phone number" ValidationExpression="^[6-9]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                   </td>
               </tr>
               <tr>
                   <td></td>
                   <td>
                     
                   </td>
               </tr>
                           <tr>
                               <td></td>
                               <td>
                                   <asp:GridView ID="grdreg" runat="server"></asp:GridView>
                               </td>
                           </tr>
           </table>

        </div>
    </form>
</body>
</html>
