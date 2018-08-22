<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmNewsListForKDU.aspx.cs" Inherits="prjaspHomework.App_Homework.WfrmNewsListForKDU" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .Body  
    {  
        margin: 0px;  
        padding: 0px;  
        background-image: url('Images/1.png');   
        background-repeat: repeat;  
    }  
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            font-family: 微軟正黑體;
            font-size: xx-large;
            text-align: center;
            color: #0000CC;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: medium;
        }
        .auto-style5 {
            height: 67px;
        }
        .auto-style6 {
            height: 20px;
        }
        .auto-style7 {
            height: 173px;
        }
        .auto-style8 {
            color: #0000FF;
            font-size: large;
            font-family: 微軟正黑體;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">功德院新聞公告</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDemo %>" DeleteCommand="DELETE FROM [tNews] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tNews] ([fDate], [fSubject], [fContent]) VALUES (@fDate, @fSubject, @fContent)" SelectCommand="SELECT * FROM [tNews]" UpdateCommand="UPDATE [tNews] SET [fDate] = @fDate, [fSubject] = @fSubject, [fContent] = @fContent WHERE [fId] = @fId">
                            <DeleteParameters>
                                <asp:Parameter Name="fId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="fDate" Type="String" />
                                <asp:Parameter Name="fSubject" Type="String" />
                                <asp:Parameter Name="fContent" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fDate" Type="String" />
                                <asp:Parameter Name="fSubject" Type="String" />
                                <asp:Parameter Name="fContent" Type="String" />
                                <asp:Parameter Name="fId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"><a href="../WfrmHome1.aspx">[回討論區首頁]</a><br />
                        <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/1images.jpg" Width="188px" />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/3images.jpg" Width="250px" />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style7">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style3" DataKeyNames="fId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="fDate" HeaderText="發佈日期" SortExpression="fDate" />
                                <asp:BoundField DataField="fSubject" HeaderText="新聞標題" SortExpression="fSubject" />
                                <asp:HyperLinkField DataNavigateUrlFields="fId" DataNavigateUrlFormatString="WfrmNewsContentKDU.aspx?nid={0}" HeaderText="新聞內容" Text="觀看" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" align="center">
                        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" CssClass="auto-style3">
                            <EditItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fDate:
                                <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                                <br />
                                fSubject:
                                <asp:TextBox ID="fSubjectTextBox" runat="server" Text='<%# Bind("fSubject") %>' />
                                <br />
                                fContent:
                                <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                                <br />
                                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </EditItemTemplate>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <InsertItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td>日期</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' Width="400px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>標題</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="fSubjectTextBox" runat="server" Height="16px" Text='<%# Bind("fSubject") %>' Width="400px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>新聞內容</td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6">
                                            <asp:TextBox ID="fContentTextBox" runat="server" Height="244px" Text='<%# Bind("fContent") %>' TextMode="MultiLine" Width="400px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                    </tr>
                                </table>
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="送出並發布" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fDate:
                                <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
                                <br />
                                fSubject:
                                <asp:Label ID="fSubjectLabel" runat="server" Text='<%# Bind("fSubject") %>' />
                                <br />
                                fContent:
                                <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' />
                                <br />
                                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                            </ItemTemplate>
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        </asp:FormView>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
