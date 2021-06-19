<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Teacher.aspx.cs" Inherits="Add_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Add Teacher" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
            <center>
            <table>
                <tr>
                    <td class="auto-style2">
                        Teacher ID</td>
                    <td> <asp:TextBox ID="id" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" style="width: 168px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        Username</td>
                    <td>
                        <asp:TextBox ID="name" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" ErrorMessage="Please Enter Your Username" ></asp:TextBox></td>
                    
                </tr>
                
                <tr>
                    <td class="auto-style2">
                        Password</td>
                    <td>
                        <asp:TextBox ID="password" runat="server" TextMode="Password" BorderColor="SlateBlue" ForeColor="SlateBlue" ErrorMessage="Please Enter Your Password" OnTextChanged="password_TextChanged" ></asp:TextBox></td>
                </tr>
                
                
            </table>
                <br />
                <br />
<asp:Button ID="Add" runat="server" Text="Add Teacher" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Add_Student" Width="138px"></asp:Button>
 <br />
                <asp:Label ID="Label4" runat="server"></asp:Label>
                <br />
                <br />

                <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="Silver" ForeColor="White" BorderStyle="Solid" BorderColor="White" BackColor="SlateBlue" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="531px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
                
                </center>
            </br></br>
             <center>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="202px" CssClass="auto-style4" Height="58px"></asp:Button>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </center>
        </div>
    </form>
</body>
</html>
