<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmLogin1.aspx.cs" Inherits="prjaspHomework.WfrmLogin1" %>

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
        }
        .auto-style4 {
            color: #FF0000;
            font-size: medium;
        }
    </style>
</head>
<body style="background-color:antiquewhite">
    <form id="form1" runat="server">
        <div align="center">
            <table class="auto-style1" align="center">
                <tr>
                    <td class="auto-style2">登入系統</td>
                </tr>
                <tr>
                    <td class="auto-style2">帳號</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <span class="auto-style4">*</span></td>
                </tr>
                <tr>
                    <td class="auto-style2">密碼</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        <span class="auto-style4">*</span></td>
                </tr>
                <tr>
                    <td class="auto-style2"><strong>
                        <asp:Button ID="Button1" runat="server" CssClass="auto-style2" OnClick="Button1_Click" Text="確認" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style4" Text="Label"></asp:Label>
                    </td>
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
