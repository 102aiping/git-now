<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmBoardDetail1.aspx.cs" Inherits="prjaspHomework.App_Homework.WfrmBoardDetail1" %>

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
            font-family: 微軟正黑體;
            font-size: xx-large;
            color: #000066;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
            font-size: large;
        }
        .auto-style4 {
            color: #0000FF;
        }
        .auto-style5 {
            font-family: 微軟正黑體;
            font-size: medium;
            color: #0000FF;
        }
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            color: #663300;
            text-align: center;
        }
        .auto-style9 {
            font-family: 微軟正黑體;
            text-align: center;
            font-size: large;
        }
        .auto-style10 {
            font-family: 微軟正黑體;
            font-size: large;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        
                        <span class="auto-style2">
                        <br />
                        主題:</span><asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                        <br />
                        <span class="auto-style10"><a href="WfrmBoardDemo1.aspx">[回討論區]</a></span><br />
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/2images.jpg" Width="200px" />
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDemo %>" DeleteCommand="DELETE FROM [tDetail] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tDetail] ([fContent], [fUser], [fHeadId], [fDate]) VALUES (@fContent, @fUser, @fHeadId, @fDate)" SelectCommand="SELECT * FROM [tDetail] WHERE ([fHeadId] = @fHeadId)" UpdateCommand="UPDATE [tDetail] SET [fContent] = @fContent, [fUser] = @fUser, [fHeadId] = @fHeadId, [fDate] = @fDate WHERE [fId] = @fId">
                            <DeleteParameters>
                                <asp:Parameter Name="fId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="fContent" Type="String" />
                                <asp:Parameter Name="fUser" Type="String" />
                                <asp:Parameter Name="fHeadId" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="fDate" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:QueryStringParameter Name="fHeadId" QueryStringField="hid" Type="Int32" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="fContent" Type="String" />
                                <asp:Parameter Name="fUser" Type="String" />
                                <asp:Parameter Name="fHeadId" Type="Int32" />
                                <asp:Parameter DbType="Date" Name="fDate" />
                                <asp:Parameter Name="fId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="討論串" InsertVisible="False" SortExpression="fId">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fId") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <table class="auto-style1">
                                            <tr class="auto-style4">
                                                <td class="auto-style7">
                                                    <asp:Label ID="Label2" runat="server" CssClass="auto-style3" Text='<%# Eval("fUser") %>'></asp:Label>
                                                </td>
                                                <td class="auto-style7">
                                                    <asp:Label ID="Label3" runat="server" CssClass="auto-style3" Text='<%# Eval("fDate") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style6" colspan="2">
                                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style5" Text='<%# Eval("fContent") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" OnItemInserting="FormView1_ItemInserting">
                            <EditItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fContent:
                                <asp:TextBox ID="fContentTextBox" runat="server" Text='<%# Bind("fContent") %>' />
                                <br />
                                fUser:
                                <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' />
                                <br />
                                fHeadId:
                                <asp:TextBox ID="fHeadIdTextBox" runat="server" Text='<%# Bind("fHeadId") %>' />
                                <br />
                                fDate:
                                <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
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
                                        <td class="auto-style9">回復人</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="fUserTextBox" runat="server" CssClass="auto-style3" Text='<%# Bind("fUser") %>' Width="200px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">內容</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="fContentTextBox" runat="server" CssClass="auto-style3" Text='<%# Bind("fContent") %>' TextMode="MultiLine" Width="200px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style9">&nbsp;</td>
                                    </tr>
                                </table>
                                <div class="auto-style6">
                                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="auto-style3" Text="送出回復" />
                                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style3" Text="取消" />
                                </div>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fContent:
                                <asp:Label ID="fContentLabel" runat="server" Text='<%# Bind("fContent") %>' />
                                <br />
                                fUser:
                                <asp:Label ID="fUserLabel" runat="server" Text='<%# Bind("fUser") %>' />
                                <br />
                                fHeadId:
                                <asp:Label ID="fHeadIdLabel" runat="server" Text='<%# Bind("fHeadId") %>' />
                                <br />
                                fDate:
                                <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
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
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
