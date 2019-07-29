<%@ Page Language="C#" AutoEventWireup="true" CodeFile="仓库被装发放.aspx.cs" Inherits="仓库被装发放" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    </head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server"  Width="1000px" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" style="margin-right: 0px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
               
                <asp:BoundField DataField="被装名称" HeaderText="被装名称" SortExpression="EName" />
                <asp:BoundField DataField="被装型号" HeaderText="被装型号" SortExpression="Pld" />
                <asp:BoundField DataField="性别" HeaderText="性别" SortExpression="Etype" />
                <asp:BoundField DataField="申请数量" HeaderText="申请数量" SortExpression="MApplicant" />
               
                <asp:BoundField DataField="队别" HeaderText="队别" SortExpression="id" />   
                <asp:TemplateField HeaderText="申请状态">
                    <ItemTemplate>
                        <asp:Button ID="allo_appr" runat="server" Text="批准" OnClick="allo_appr_Click" />
                        <asp:Button ID="allo_disap" runat="server" Text="不批准" OnClick="allo_disap_Click" />
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:实验室设备管理系统ConnectionString %>" SelectCommand="SELECT * FROM [设备报修]"></asp:SqlDataSource>
        <br />
        <br />
        <br />
    </div>
    </form>
</body>
</html>
