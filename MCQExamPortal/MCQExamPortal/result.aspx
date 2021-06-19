<%@ Page Language="C#" AutoEventWireup="true" CodeFile="result.aspx.cs" Inherits="result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server" BackColor="SlateBlue" Font-Bold="True" ForeColor="White" Height="80px" Width="100%" Font-Size="Large">
            <center><asp:Label ID="Label2" runat="server" Text="Student" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label></center>
            </asp:Panel>
        <div>
            <center> <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView></center>
           
        </div>
        
        <p>
<center><asp:Button ID="Button1" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="243px" CssClass="auto-style4" Height="50px"></asp:Button>
          </center>      </p>
        
    </form>
</body>
</html>
