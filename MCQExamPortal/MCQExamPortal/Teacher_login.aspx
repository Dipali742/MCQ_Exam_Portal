<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Teacher_login.aspx.cs" Inherits="Teacher_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 0px;
        }
        .auto-style2 {
            width: 224px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Teacher Login" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
            <br />
            <center>
             <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        Teacher ID</td>
                    <td> <asp:TextBox ID="tidd" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="198px"></asp:TextBox></td>
                    </tr>
                    <td class="auto-style2">
                        Teacher Name</td>
                    <td> <asp:TextBox ID="id" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" ErrorMessage="Please Enter Your Username"  Width="219px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td class="auto-style2">
                        Password</td>
                    <td>
                        <asp:TextBox ID="pass" TextMode="Password" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" CssClass="auto-style1" Width="211px"  ></asp:TextBox></td>
                    
                </tr>
            </table>
                </center>
             <p>
            <center>
            <asp:Button ID="Button2" runat="server" BackColor="SlateBlue" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button2_Click" Text="Login" Width="100px" /></center>
        </p>
        </div>
         <center>
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
    </form>
</body>
</html>
