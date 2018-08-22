<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmBoardDemo1.aspx.cs" Inherits="prjaspHomework.App_Homework.WfrmBoardDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 20px;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: medium;
        }
        .auto-style4 {
            font-family: 微軟正黑體;
            color: #000066;
        }
        .auto-style5 {
            text-align: center;
        }
        .auto-style6 {
            font-family: 微軟正黑體;
            text-align: center;
            color: #000066;
        }
        .auto-style8 {
            font-family: 微軟正黑體;
            font-size: medium;
            height: 24px;
        }
        .auto-style9 {
            font-family: 微軟正黑體;
            font-size: xx-large;
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style9">功德院_討論區</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDemo %>" DeleteCommand="DELETE FROM [tHead] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tHead] ([fDate], [fSubject], [fUser]) VALUES (@fDate, @fSubject, @fUser)" SelectCommand="SELECT * FROM [tHead]" UpdateCommand="UPDATE [tHead] SET [fDate] = @fDate, [fSubject] = @fSubject, [fUser] = @fUser WHERE [fId] = @fId">
                        <DeleteParameters>
                            <asp:Parameter Name="fId" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fSubject" Type="String" />
                            <asp:Parameter Name="fUser" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="fDate" Type="String" />
                            <asp:Parameter Name="fSubject" Type="String" />
                            <asp:Parameter Name="fUser" Type="String" />
                            <asp:Parameter Name="fId" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <div class="auto-style6">
                        <a href="../WfrmHome1.aspx">[討論區首頁]</a></div>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" align="center">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="fSubject" HeaderText="主題" SortExpression="fSubject" />
                            <asp:BoundField DataField="fUser" HeaderText="樓主" SortExpression="fUser" />
                            <asp:BoundField DataField="fDate" HeaderText="最後回覆日期" SortExpression="fDate" />
                            <asp:HyperLinkField DataNavigateUrlFields="fId" DataNavigateUrlFormatString="WfrmBoardDetail1.aspx?hid={0}" HeaderText="加入" Text="回應" />
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
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style2" align="center">
                    <asp:FormView ID="FormView1" runat="server" CellPadding="3" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Insert" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" GridLines="Horizontal" OnItemInserting="FormView1_ItemInserting">
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
                            fUser:
                            <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                        </EditItemTemplate>
                        <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                        <InsertItemTemplate>
                            <table class="auto-style1">
                                <tr>
                                    <td class="auto-style6">留言人</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fUserTextBox" runat="server" CssClass="auto-style4" Text='<%# Bind("fUser") %>' Width="250px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="auto-style6">主題</td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:TextBox ID="fSubjectTextBox" runat="server" CssClass="auto-style4" Text='<%# Bind("fSubject") %>' Height="270px" TextMode="MultiLine" Width="250px" />
                                    </td>
                                </tr>
                            </table>
                            <div class="auto-style5">
                                <br class="auto-style4" />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="auto-style4" Text="送出並儲存" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style4" Text="取消" />
                            </div>
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
                            fUser:
                            <asp:Label ID="fUserLabel" runat="server" Text='<%# Bind("fUser") %>' />
                            <br />
                            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="編輯" />
                            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="刪除" />
                            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="新增" />
                        </ItemTemplate>
                        <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                        <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    </asp:FormView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
