<%@ Page Language="C#" AutoEventWireup="true" CodeFile="仓库添加被装.aspx.cs" Inherits="添加被装" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 321px;
            margin-right: 0px;
        }
        .auto-style5 {
            width: 200px;
        }
        .auto-style6 {
            width: 198px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style2">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">被装名称</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" Width="150px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>短袖体能</asp:ListItem>
                        <asp:ListItem>长袖体能</asp:ListItem>
                        <asp:ListItem>夏常服短袖</asp:ListItem>
                        <asp:ListItem>夏常服长袖</asp:ListItem>
                        <asp:ListItem>作战靴</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">被装型号</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList2" runat="server" Width="150px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>165/92</asp:ListItem>
                        <asp:ListItem>165/96</asp:ListItem>
                        <asp:ListItem>165/100</asp:ListItem>
                        <asp:ListItem>170/92</asp:ListItem>
                        <asp:ListItem>170/96</asp:ListItem>
                        <asp:ListItem>170/100</asp:ListItem>
                        <asp:ListItem>255</asp:ListItem>
                        <asp:ListItem>260</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">性别</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="DropDownList3" runat="server" Width="150px">
                        <asp:ListItem></asp:ListItem>
                        <asp:ListItem>男</asp:ListItem>
                        <asp:ListItem>女</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">添加数量</td>
                <td class="auto-style5">
                    <asp:TextBox ID="TextBox1" runat="server" Width="145px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
            </tr>
        </table>
        <asp:Button ID="add" style="margin-left: 75px" runat="server" Text="添加" Width="75px" OnClick="add_Click" />
    
    </div>
    </form>
</body>
</html>
