<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Student_quiz.aspx.cs" Inherits="Student_quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
        <asp:Panel ID="Panel1" runat="server" BackColor="SlateBlue" Font-Bold="True" ForeColor="White" Height="80px" Width="100%" Font-Size="Large">
            <center><asp:Label ID="Label4" runat="server" Text="Student" Font-Bold="True" Font-Size="XX-Large" ForeColor="White"></asp:Label></center>
            </asp:Panel>
        <center> <div> 
            <asp:Label ID="Label3" runat="server" Text="Quiz ID: "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Timer ID="Timer1" runat="server" Interval="1000" ontick="Timer1_Tick" ></asp:Timer>
            <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
            <asp:Label ID="Label2" runat="server" Visible="True"></asp:Label>
        </div>

        
        <table border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>
                    <asp:DataList ID="dlQuestion" runat="server" OnSelectedIndexChanged="dlQuestion_SelectedIndexChanged"  OnItemDataBound="OnRowDataBound" >
                        <ItemTemplate>
                            <p>
                                <%#Container.ItemIndex+1 %>
                                )
                                <%# Eval("que_desc")%>
                                
                                     
                                    
                            </p>

                            <asp:Image ID="Image1" runat="server" Height="80" Width="80" />
                            <table>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionOne" GroupName="Questions" Text='<%# Eval("opt1") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionTwo" GroupName="Questions" Text='<%# Eval("opt2") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionThree" GroupName="Questions" Text='<%# Eval("opt3") %>'
                                            runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="rblOptionFour" GroupName="Questions" Text='<%# Eval("opt4") %>'
                                            runat="server" />
                                    </td>
                                </tr
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="answer" GroupName="Questions" Text='<%# Eval("ans") %>'
                                            runat="server" Visible="False" />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:RadioButton ID="marks" GroupName="Questions" Text='<%# Eval("marks") %>'
                                            runat="server" Visible="False" />
                                    </td>
                                </tr>
                            </table>
                        </ItemTemplate>
                    </asp:DataList>
                </td>
    
            </tr>
        </table>
        <asp:Button ID="Button1" runat="server" Text="Finish" BackColor="SlateBlue" BorderStyle="None" ForeColor="White" Font-Bold="True" Height="20" Width="80" onclick="Button1_Click" />
       </center>
       
    </form>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     <asp:Label ID="Label5" runat="server"></asp:Label>
</body>
</html>

