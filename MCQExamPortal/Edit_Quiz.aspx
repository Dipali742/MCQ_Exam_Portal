<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Edit_Quiz.aspx.cs" Inherits="Edit_Quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-left: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <asp:Panel ID="Panel1" runat="server" BackColor="Slateblue" BorderStyle="None" Height="100" server="" Width="100%">
             <center><asp:Label ID="Label1" runat="server" Text="Online Examination System" ForeColor="White" Font-Size="XX-Large" Height="50" Width="100%"></asp:Label>
                </center> <center><asp:Label runat="server" Text="Manage Quiz" Font-Size="X-Large" ForeColor="White"></asp:Label></center></asp:Panel>
            </br></br><center>About Quiz</center>
        <center> 
        <div>
           <br />
             <asp:GridView ID="GridView1" runat="server" AlternatingRowStyle-BackColor="Silver" ForeColor="White" BorderStyle="Solid" BorderColor="White" BackColor="SlateBlue" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center" Width="531px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
              
            
          
            
            <br />
            Questions in current Quiz<br />
              
            
          
            
           <br />
             <asp:GridView ID="GridView2" HeaderStyle-BackColor="SlateBlue" HeaderStyle-ForeColor="White" runat="server" OnRowDataBound="OnRowDataBound" AutoGenerateColumns="false" OnRowCommand="GridView2_RowCommand" Height="125px" Width="962px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">  
                <Columns>  
                    <asp:BoundField DataField="queid" HeaderText="Question Id" />  
                    <asp:BoundField DataField="que_desc" HeaderText="Question Description" />  
                    <asp:BoundField DataField="que_img" HeaderText="Question Image" />  
                    <asp:BoundField DataField="opt1" HeaderText="Option 1" />  
                     <asp:BoundField DataField="opt2" HeaderText="Option 2" /> 
                     <asp:BoundField DataField="opt3" HeaderText="Option 3" /> 
                     <asp:BoundField DataField="opt4" HeaderText="Option 4" /> 
                    <asp:BoundField DataField="ans" HeaderText="answer" />  
                    <asp:BoundField DataField="marks" HeaderText="marks" />  
                    <asp:TemplateField HeaderText = "Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit"  runat="server" Width="100" Text="REMOVE" CommandName="EditButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  
            </asp:GridView> 
             <asp:Label ID="Label4" runat="server"></asp:Label>
             <br />
            Fill the following details to add new question in current quiz<br />
                <br />
            <table>
               
                <tr>
                    <td>Question Description</td>
                    <td class="auto-style1"> <asp:TextBox ID="que" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" style="margin-left: 8px;" Width="261px"></asp:TextBox></td>
                    
                </tr>
                
                 <tr>    <td> Option 1</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="opt1" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue"  Width="257px"></asp:TextBox></td>
                    
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
                        <asp:TextBox ID="marks" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="246px" ></asp:TextBox></td>
                    
                </tr>
                 <tr>
                    <td>Correct Answer</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="ans" runat="server" ForeColor="SlateBlue" BorderColor="SlateBlue" Width="246px" OnTextChanged="ans_TextChanged"></asp:TextBox></td>
                    
                </tr>
               
                <tr>
                    <td>Image</td>
                    <td class="auto-style1">
                     <asp:FileUpload ID="FileUpload1" runat="server"></asp:FileUpload> </td>
                    
                </tr>
                
            </table>
                <br />
                <br />
                  <asp:Button ID="Button3" runat="server" Text="Upload image" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Add_image" Width="138px"></asp:Button>
<asp:Button ID="Add" runat="server" Text="Add Question" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Add_que" Width="138px"></asp:Button>
            <br />
            <br />
            <br />
            Questions from Question Bank<br />
 <br />
            <asp:GridView ID="GridView3" HeaderStyle-BackColor="SlateBlue" HeaderStyle-ForeColor="White" runat="server" OnRowDataBound="OnRowDataBound" AutoGenerateColumns="false" OnRowCommand="GridView3_RowCommand" Height="125px" Width="962px" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">  
                <Columns>  
                    <asp:BoundField DataField="queeid" HeaderText="Question Id" />  
                    <asp:BoundField DataField="quee_desc" HeaderText="Question Description" />  
                    <asp:BoundField DataField="quee_img" HeaderText="Question Image" />  
                    <asp:BoundField DataField="optt1" HeaderText="Option 1" />  
                     <asp:BoundField DataField="optt2" HeaderText="Option 2" /> 
                     <asp:BoundField DataField="optt3" HeaderText="Option 3" /> 
                     <asp:BoundField DataField="optt4" HeaderText="Option 4" /> 
                    <asp:BoundField DataField="anss" HeaderText="answer" />  
                    <asp:BoundField DataField="markss" HeaderText="marks" />  
                    <asp:TemplateField HeaderText = "Image">
            <ItemTemplate>
                <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
            </ItemTemplate>
        </asp:TemplateField>
                    <asp:TemplateField>  
                        <ItemTemplate>  
                            <asp:Button ID="btnEdit"  runat="server" Width="100" Text="ADD" CommandName="AddButton" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />  
                        </ItemTemplate>  
                    </asp:TemplateField>  
                </Columns>  
            </asp:GridView> 
             <asp:Label ID="Label10" runat="server"></asp:Label>
             <asp:Label ID="Label11" runat="server"></asp:Label>
                <br />
     
        </div>
        <br />
<asp:Button ID="Button2" runat="server" Text="Delete Quiz" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="Delete_Quiz" Width="168px" CssClass="auto-style4" Height="50px"></asp:Button>
                <br />
      <p>

<asp:Button ID="Button1" runat="server" Text="Home" BackColor="SlateBlue" ForeColor="White" BorderStyle="Solid" OnClick="gotohome" Width="291px" CssClass="auto-style4" Height="50px"></asp:Button>
                </p>
            </center>
         <asp:Label ID="Label2" runat="server"></asp:Label>
         <asp:Label ID="Label3" runat="server"></asp:Label>
         <asp:Label ID="Label5" runat="server"></asp:Label>
         <asp:Label ID="Label7" runat="server"></asp:Label>
         <asp:Label ID="Label8" runat="server"></asp:Label>
         <asp:Label ID="Label9" runat="server"></asp:Label>
         <asp:Label ID="Label6" runat="server"></asp:Label>
    </form>
</body>
</html>
