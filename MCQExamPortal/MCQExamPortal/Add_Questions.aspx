<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add_Questions.aspx.cs" Inherits="Add_Questions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 347px;
        }
        .auto-style2 {
            margin-left: 3px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Add Questions" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            <br />
             <center>
            <table>
               
                <tr>
                    <td>Question Description</td>
                    <td class="auto-style1"> <asp:TextBox ID="que" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" OnTextChanged="que1_TextChanged" style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                
                 <tr>    <td> Option 1</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt1" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" OnTextChanged="opt1_TextChanged" Width="257px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                         
                    <td>Option 2</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt2" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="250px" CssClass="auto-style2"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Option 3</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt3" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="251px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Option 4</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt4" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>Marks</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="marks" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>Correct Answer</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="ans" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="246px"></asp:TextBox></td>
                    
                </tr>
                <tr>
                    <td>Image</td>
                    <td class="auto-style1">
                     <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload> </td>
                    
                </tr>
                
                
            </table>
                <br />
                <br />

<asp:Button ID="Add" runat="server" Text="Add Question" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Add_que" Width="138px"></asp:Button>
 <br />
                 <p>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </p>
                <br />
                  <asp:GridView ID="gvImages" runat="server" AutoGenerateColumns="false" OnRowDataBound="OnRowDataBound">
    <Columns>
        <asp:BoundField HeaderText="Quesstion Id" DataField="queeid" />
        <asp:BoundField HeaderText="Description" DataField="quee_desc" />
        <asp:BoundField HeaderText="Option 1" DataField="optt1" />
        <asp:BoundField HeaderText="Option 2" DataField="optt2" />
        <asp:BoundField HeaderText="Option 3" DataField="optt3" />
        <asp:BoundField HeaderText="Option 4" DataField="optt4" />
        <asp:BoundField HeaderText="Answer" DataField="anss" />
        <asp:BoundField HeaderText="Marks" DataField="markss" />
        <asp:TemplateField HeaderText = "Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView> <br />

                </center>
            <center>
<asp:Button ID="Button1" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </center>
            </br></br>
            <center>
                </center>
        </div>
    </form>
</body>
</html>
