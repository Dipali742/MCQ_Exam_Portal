<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div
            <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="50" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="25px" Width="100%"></asp:Label>
                </center></asp:Panel>
            <br />
            <center>
            <asp:Button ID="Button1" runat="server" BackColor="SlateBlue" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button1_Click" Text="Student" Width="100px" /></center>
        </div>
        <p>
            <center>
            <asp:Button ID="Button2" runat="server" BackColor="SlateBlue" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button2_Click" Text="Teacher" Width="100px" /></center>
        </p>
    </form>
</body>
</html>
