<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Create_Quiz.aspx.cs" Inherits="Create_Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 95px;
        }
        .auto-style2 {
            width: 98px;
        }
        .auto-style3 {
            width: 211px;
        }
        .auto-style4 {
            width: 554px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Manage Quiz" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
            <br />
        </div>
        <center>
        <table class="auto-style4">
           
                <tr>
                    <td class="auto-style3">Quiz Name</td>
                    <td class="auto-style1"> <asp:TextBox ID="quizname" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue"  style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                
                 <tr>    <td class="auto-style3"> Time (in sec)</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qt" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue"  Width="257px" OnTextChanged="qt_TextChanged"></asp:TextBox></td>
                    
                </tr>
                <tr>
                         
                    <td class="auto-style3">Marks</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="qmarks" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="250px" CssClass="auto-style2"></asp:TextBox></td>
                    
                </tr>
            </table>

             <br />
                <br />
                  <asp:Button ID="Button2" runat="server" Text="Create Quiz" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Add_quiz" Width="208px" Height="53px"></asp:Button>
                    
                <br />
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <br />
            
               
                
                <br />

             <asp:GridView ID="GridView1" HeaderStyle-BackColor="SlateBlue" HeaderStyle-ForeColor="White" runat="server" AutoGenerateColumns="false" OnRowCommand="GridView1_RowCommand" Height="125px" Width="962px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">  
                <Columns>  
                    <asp:BoundField DataField="qid" HeaderText="Id" />  
                    <asp:BoundField DataField="name" HeaderText="Name" />  
                    <asp:BoundField DataField="time" HeaderText="Time" />  
                    <asp:BoundField DataField="marks" HeaderText="Total Marks" />  
                    <asp:BoundField DataField="createdBy" HeaderText="Created By" />  
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit"  runat="server" Width="100" Text="Edit/Delete" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  
            </asp:GridView>  </center>
            </center>

        <br>
        </br>
       <center>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <asp:Button ID="Button5" runat="server" Text="Home" BackColor="Slateblue" BorderStyle="None" ForeColor="White" Height="50px" OnClick="Button5_Click" Width="229px" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center>
    </form>
</body>
</html>
