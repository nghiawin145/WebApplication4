<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication4.Navigation.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        /*.relative {
            height: 300px;
            width: 300px;
            position: relative;
            margin: 100px auto;
            background: blue;
        }
        .absolute{
            position: absolute;
            height: 40px;
            width: 40px;
        }
        .red{
            top: 200px;
            left: 100px;
            background-color: red;
        }
        .yellow{
            top: 100px;
            left: 200px;
            background-color: yellow;
        }
        .white{
            top: 150px;
            left: 250px;
            background-color: white;
        }*/
        boby{
            height: 8000px;
            background-color: cornflowerblue;
        }
        .relative{
            margin-top: 100px;
            position: relative;
            height: 2000px;
        }
        .fixed{
            height: 30px;
            line-height: 30px;
            background-color: orangered;
            color: #fff;
            position: fixed;
            width: 100%;
            top : 0px;
        }
        .bottom{
            height: 400px;
            margin-top: 600px;
            background-color: yellow;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="relative">
        <div class="fixed"> chào mừng bạn</div>
            <div class="bottom"> không có fixed</div>
        </div>
        <%--<div class="relative">
            <div class="absolute red"></div>
            <div class="absolute yellow"></div>
            <div class="absolute white"></div>
        </div>--%>
    </form>
</body>
</html>
