<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmFDUMessageDemo.aspx.cs" Inherits="prjaspHomework.WfrmFDUMessageDemo" %>

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
            text-align: center;
        }
        .auto-style3 {
            font-family: 微軟正黑體;
        }
        .auto-style4 {
            color: #0000FF;
        }
        .auto-style6 {
            text-align: center;
            height: 22px;
        }
        .auto-style7 {
            font-family: 微軟正黑體;
            font-size: large;
        }
        .auto-style8 {
            font-family: 微軟正黑體;
            font-size: large;
            color: #993300;
        }
        .auto-style9 {
            color: #FF0000;
        }
        .auto-style10 {
            color: #FF0000;
            font-size: large;
            font-family: 微軟正黑體;
        }
        .auto-style11 {
            text-align: center;
            color: #0000FF;
            font-family: 微軟正黑體;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">功德院(merit yuan)留言區</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbDemo %>" DeleteCommand="DELETE FROM [tKDUMessage] WHERE [fId] = @fId" InsertCommand="INSERT INTO [tKDUMessage] ([fDate], [fUser], [fMessage]) VALUES (@fDate, @fUser, @fMessage)" SelectCommand="SELECT * FROM [tKDUMessage]" UpdateCommand="UPDATE [tKDUMessage] SET [fDate] = @fDate, [fUser] = @fUser, [fMessage] = @fMessage WHERE [fId] = @fId">
                            <DeleteParameters>
                                <asp:Parameter Name="fId" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter DbType="Date" Name="fDate" />
                                <asp:Parameter Name="fUser" Type="String" />
                                <asp:Parameter Name="fMessage" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter DbType="Date" Name="fDate" />
                                <asp:Parameter Name="fUser" Type="String" />
                                <asp:Parameter Name="fMessage" Type="String" />
                                <asp:Parameter Name="fId" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <div class="auto-style11">
                            <a href="WfrmHome1.aspx">[回討論區首頁]</a></div>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:TemplateField HeaderText="留言串" InsertVisible="False" SortExpression="fId">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("fId") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <table class="auto-style1">
                                            <tr class="auto-style4">
                                                <td>
                                                    <asp:Label ID="Label4" runat="server" CssClass="auto-style7" Text='<%# Eval("fDate") %>'></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" CssClass="auto-style7" Text='<%# Eval("fUser") %>'></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                                    <asp:Label ID="Label6" runat="server" CssClass="auto-style8" Text='<%# Eval("fMessage") %>'></asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <EmptyDataTemplate>
                                <table class="auto-style1">
                                    <tr class="auto-style4">
                                        <td class="auto-style6">
                                            <asp:Label ID="Label1" runat="server" CssClass="auto-style5" Text='<%# Eval("fDate") %>'></asp:Label>
                                        </td>
                                        <td class="auto-style6">
                                            <asp:Label ID="Label2" runat="server" CssClass="auto-style5" Text='<%# Eval("fUser") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style6" colspan="2">
                                            <asp:Label ID="Label3" runat="server" CssClass="auto-style7" Text='<%# Eval("fMessage") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
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
                        <asp:FormView ID="FormView1" runat="server" CellPadding="4" DataKeyNames="fId" DataSourceID="SqlDataSource1" DefaultMode="Insert" ForeColor="#333333" CssClass="auto-style3" OnItemInserting="FormView1_ItemInserting" Width="224px">
                            <EditItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel1" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fDate:
                                <asp:TextBox ID="fDateTextBox" runat="server" Text='<%# Bind("fDate") %>' />
                                <br />
                                fUser:
                                <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' />
                                <br />
                                fMessage:
                                <asp:TextBox ID="fMessageTextBox" runat="server" Text='<%# Bind("fMessage") %>' />
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
                                        <td>留言人</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:TextBox ID="fUserTextBox" runat="server" Text='<%# Bind("fUser") %>' Width="200px" />
                                        </td>
                                    </tr>
                                </table>
                                留言內容<span class="auto-style9">*</span><br /> 
                                <asp:TextBox ID="fMessageTextBox" runat="server" Height="248px" Text='<%# Bind("fMessage") %>' TextMode="MultiLine" Width="200px" />
                                <br />
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" CssClass="auto-style3" Text="送出並儲存" />
                                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="auto-style3" Text="取消" />
                            </InsertItemTemplate>
                            <ItemTemplate>
                                fId:
                                <asp:Label ID="fIdLabel" runat="server" Text='<%# Eval("fId") %>' />
                                <br />
                                fDate:
                                <asp:Label ID="fDateLabel" runat="server" Text='<%# Bind("fDate") %>' />
                                <br />
                                fUser:
                                <asp:Label ID="fUserLabel" runat="server" Text='<%# Bind("fUser") %>' />
                                <br />
                                fMessage:
                                <asp:Label ID="fMessageLabel" runat="server" Text='<%# Bind("fMessage") %>' />
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
                    <td class="auto-style6">
                        <asp:Label ID="lblMessage" runat="server" CssClass="auto-style10" Text="Label"></asp:Label>
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
