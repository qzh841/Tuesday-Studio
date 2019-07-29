<%@ Page Language="C#" AutoEventWireup="true" CodeFile="连队被装调换.aspx.cs" Inherits="连队被装调换" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
        <br />
    
        &nbsp;&nbsp;
    
        被装名称<asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 15px" Width="150px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>短袖体能</asp:ListItem>
            <asp:ListItem>长袖体能</asp:ListItem>
            <asp:ListItem>夏常服短袖</asp:ListItem>
            <asp:ListItem>夏常服长袖</asp:ListItem>
            <asp:ListItem>作战靴</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;
    
        性别<asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 15px" Width="150px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>男</asp:ListItem>
            <asp:ListItem>女</asp:ListItem>
        </asp:DropDownList>
    
        &nbsp;&nbsp;
    
        调换数量<asp:TextBox ID="TextBox1" runat="server" style="margin-left: 15px" Width="150px"></asp:TextBox>
    
        <br />
        <br />
        &nbsp;&nbsp;
        原型号<asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 40px" Width="150px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="165/92">165/92</asp:ListItem>
            <asp:ListItem Value="165/96">165/96</asp:ListItem>
            <asp:ListItem Value="165/100">165/100</asp:ListItem>
            <asp:ListItem Value="170/92">170/92</asp:ListItem>
            <asp:ListItem>170/96</asp:ListItem>
            <asp:ListItem>170/100</asp:ListItem>
            <asp:ListItem>255</asp:ListItem>
            <asp:ListItem>260</asp:ListItem>
        </asp:DropDownList>
    
        &nbsp;&nbsp; 目标型号<asp:DropDownList ID="DropDownList4" runat="server" style="margin-left: 15px" Width="150px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem>165/92</asp:ListItem>
            <asp:ListItem>165/96</asp:ListItem>
            <asp:ListItem>165/100</asp:ListItem>
            <asp:ListItem>170/92</asp:ListItem>
            <asp:ListItem>170/96</asp:ListItem>
            <asp:ListItem>170/100</asp:ListItem>
            <asp:ListItem Value="255"></asp:ListItem>
            <asp:ListItem>260</asp:ListItem>
        </asp:DropDownList>
        <br />
    
        <asp:Button ID="sub" runat="server" Text="提交" style="margin-left:775px" Width="75px" OnClick="sub_Click" />
        <asp:Button ID="search" runat="server" Text="查询" style="margin-left: 30px" Width="75px" OnClick="search_Click" />
    
        <br />
    
        <br />
        <br />
        <asp:Panel ID="pannel" runat="server" Visible="False">
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="队别" HeaderText="队别" />
                    <asp:BoundField DataField="被装名称" HeaderText="被装名称" />
                    <asp:BoundField DataField="原型号" HeaderText="原型号" />
                    <asp:BoundField DataField="目标型号" HeaderText="目标型号" />
                    <asp:BoundField DataField="性别" HeaderText="性别" />
                    <asp:BoundField DataField="调换数量" HeaderText="调换数量" />
                    <asp:BoundField DataField="申请状态" HeaderText="申请状态" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
         <br />          
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
