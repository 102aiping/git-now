<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WfrmHome1.aspx.cs" Inherits="prjaspHomework.WfrmHome1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .img{        
        background-image: url('/Images/1.jpg');   
        background-repeat: repeat;  
    }  
        .auto-style5 {
            color: #000066;
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
        .auto-style8 {
            color: #000066;
            text-decoration: underline;
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
        .auto-style12 {
            width: 99%;
            height: 129px;
        }
     
        .auto-style15 {
            height: 20px;
            text-align: center;
            width: 554px;
            font-family: 微軟正黑體;
            font-size: xx-large;
            color: #663300;
        }
        .auto-style16 {
            height: 20px;
            text-align: center;
            width: 554px;
            color: #000066;
            font-family: 微軟正黑體;
            font-size: xx-large;
        }
     
        .auto-style17 {
            text-align: left;
        }
     
        </style>
</head>
<body style="background-color:cornsilk" >
    <form id="form1" runat="server">
        <div>
        <table class="auto-style12" align="center">
            <tr class="img">
                <td class="auto-style15">討論區首頁</td>
            </tr>
            <tr>
                <td class="auto-style16"><a href="App_Homework/WfrmNewsListForKDU.aspx"><span class="auto-style5">功德院(merit yuan)新聞公告</span></a></td>
            </tr>
            <tr>
                <td class="auto-style16"><a href="App_Homework/WfrmNewsListForKDU.aspx"><span class="auto-style5">功德院</span></a><a href="App_Homework/WfrmBoardDemo1.aspx"><span class="auto-style8">_</span><span class="auto-style5">討論區</span></a></td>
            </tr>
            </table>
        </div>
        <asp:Localize ID="Localize2" runat="server"></asp:Localize>
    </form>
    <p class="auto-style17">
        &nbsp;</p>
</body>
</html>
