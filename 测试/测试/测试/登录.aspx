<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="登录.aspx.cs" Inherits="测试.用户登录" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
     <meta charset="utf-8"/>
  <title>被装管理系统</title>
  <meta name="description" content="particles.js is a lightweight JavaScript library for creating particles."/>
  <meta name="author" content="Vincent Garreau" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <link rel="stylesheet" media="screen" href="css/style.css"/>
  <link rel="stylesheet" type="text/css" href="css/reset.css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div id="particles-js">
		<div class="login" style="margin-left: 200px; background-color: #F1F1F1;">
             <div>
			<div class="login-top">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;登 录
			</div>
            </div>
            <div class="login-center clearfix" style="font-size: medium; font-family: 宋体, Arial, Helvetica, sans-serif">
               
                身 份
                <asp:DropDownList ID="login_role" style="margin-left: 30px" runat="server" Width="150px">
                    <asp:ListItem></asp:ListItem>
                    <asp:ListItem>仓库管理员</asp:ListItem>
                    <asp:ListItem>连队负责人</asp:ListItem>
                </asp:DropDownList>
               </div>
            
			<div class="login-center clearfix" style="font-size: medium; font-family: 宋体, Arial, Helvetica, sans-serif">
				账 号 
                <asp:TextBox ID="login_username" style="margin-left: 30px" runat="server" Width="150px"></asp:TextBox>
			</div>
			<div class="login-center clearfix" style="font-size: medium; font-family: 宋体, Arial, Helvetica, sans-serif">
				密 码 
                <asp:TextBox ID="login_code" style="margin-left: 29px" runat="server" Width="150px"></asp:TextBox>
			</div>
            <div>



            </div>
			<div class="new-button" >
				
                <asp:Button ID="login_btn" runat="server" Text="登录" cssclass="pl" OnClick="login_btn_Click" />
           
		</div>
		<div class="sk-rotating-plane"></div>
        </div>
</div>

<!-- scripts -->
<script type="text/javascript">
    function hasClass(elem, cls) {
        cls = cls || '';
        if (cls.replace(/\s/g, '').length == 0) return false; //当cls没有参数时，返回false
        return new RegExp(' ' + cls + ' ').test(' ' + elem.className + ' ');
    }

    function addClass(ele, cls) {
        if (!hasClass(ele, cls)) {
            ele.className = ele.className == '' ? cls : ele.className + ' ' + cls;
        }
    }

    function removeClass(ele, cls) {
        if (hasClass(ele, cls)) {
            var newClass = ' ' + ele.className.replace(/[\t\r\n]/g, '') + ' ';
            while (newClass.indexOf(' ' + cls + ' ') >= 0) {
                newClass = newClass.replace(' ' + cls + ' ', ' ');
            }
            ele.className = newClass.replace(/^\s+|\s+$/g, '');
        }
    }

</script>
    </form>
</body>
</html>
