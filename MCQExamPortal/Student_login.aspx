<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_login.aspx.cs" Inherits="Student_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <center><asp:Label ID="Label1" runat="server" BackColor="SlateBlue" BorderStyle="None" Font-Bold="True" Font-Size="XX-Large" ForeColor="White" Height="100px" Text="Student Login" Width="100%"></asp:Label></center> 
        </div>
        <p>
            &nbsp;</p>
        <center>
            <p>
            <asp:Label ID="Label5" runat="server" Text="Student ID"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="sid" runat="server" Width="194px"></asp:TextBox>
        </p>
            <p>
            <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Susername" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="Spassword" runat="server" TextMode="Password" OnTextChanged="Spassword_TextChanged"></asp:TextBox>
        </p>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
        <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p></center>
        
        <p>
<center><asp:Button ID="Button2" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="156px" CssClass="auto-style4" Height="50px"></asp:Button>
           </center>     </p>
        
    </form>
</body>
</html>
