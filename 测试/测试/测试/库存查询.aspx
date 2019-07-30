<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="库存查询.aspx.cs" Inherits="测试.库存查询" %>

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
        被装名称<asp:TextBox ID="TextBox1" style="margin-left: 30px" runat="server" Width="150px"></asp:TextBox>
        &nbsp; 被装型号<asp:DropDownList ID="DropDownList2" runat="server" style="margin-left: 30px" Width="150px">
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
    
        &nbsp; 性别<asp:DropDownList ID="DropDownList3" runat="server" style="margin-left: 30px" Width="150px">
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="男">男</asp:ListItem>
            <asp:ListItem Value="女">女</asp:ListItem>
        </asp:DropDownList>
    
        <asp:Button ID="zy_count_search" runat="server" Text="查询" style="margin-left: 30px" Width="75px" OnClick="zy_count_search_Click"/>
    
        <br />
    
        <br />
        <br />
        <asp:Panel ID="zy_count_pannel" runat="server" Visible="False">
            <asp:GridView ID="GridView1" runat="server" Width="800px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="被装名称" HeaderText="被装名称" SortExpression="被装名称" >
                        </asp:BoundField>
                    <asp:BoundField DataField="被装型号" HeaderText="被装型号" SortExpression="被装型号" >
                        </asp:BoundField>
                    <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="性别" >
                        </asp:BoundField>
                    <asp:BoundField DataField="被装数量" HeaderText="被装数量" SortExpression="被装数量" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:被装管理系统ConnectionString %>" SelectCommand="SELECT [被装名称], [被装型号], [性别], [被装数量] FROM [库存表]"></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
