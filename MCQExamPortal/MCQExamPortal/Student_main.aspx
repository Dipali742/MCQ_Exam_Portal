<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_main.aspx.cs" Inherits="Student__main" %>

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
        </div>
        <center><p>
            <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" ForeColor="SlateBlue" OnClick="Button1_Click" Text="Logout" />
            <asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" ForeColor="SlateBlue" OnClick="Button2_Click" style="height: 25px" Text="View Results" />
        </p>
        <asp:GridView ID="GridView1" HeaderStyle-BackColor="SlateBlue" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" Height="172px" Width="976px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
                <Columns>  
                    <asp:BoundField DataField="qid" HeaderText="Id" />  
                    <asp:BoundField DataField="name" HeaderText="Name" />  
                    <asp:BoundField DataField="time" HeaderText="Time" />  
                    <asp:BoundField DataField="marks" HeaderText="Total Marks" />  
                    <asp:BoundField DataField="createdBy" HeaderText="By" />  
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit" runat="server" Width="100" Text="Take Quiz" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  
            </asp:GridView>  </center>
        
        <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
        
    </form>
</body>
</html>
