<%@ Page Language="C#" AutoEventWireup="true" CodeFile="库存查询.aspx.cs" Inherits="设备统计" %>

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
            <asp:GridView ID="GridView1" runat="server" Width="800px" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Pld" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="被装名称" InsertVisible="False"> 
                        <ItemStyle HorizontalAlign="Center" /> 
                        <HeaderStyle HorizontalAlign="Center"/> 
                        <ItemTemplate> 
                            <asp:Label ID="Label2" runat="server" Text='<%# this.GridView1.PageIndex * this.GridView1.PageSize + this.GridView1.Rows.Count + 1%>' /> 
                        </ItemTemplate> 
                    </asp:TemplateField>
                    <asp:BoundField DataField="EName" HeaderText="被装型号" SortExpression="EName" >
                        <ItemStyle HorizontalAlign="Center" /> 
                        <HeaderStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
                    <asp:BoundField DataField="Etype" HeaderText="性别" SortExpression="Etype" >
                        <ItemStyle HorizontalAlign="Center" /> 
                        <HeaderStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
                    <asp:BoundField DataField="Pld" HeaderText="被装数量" ReadOnly="True" SortExpression="Pld" >
                        <ItemStyle HorizontalAlign="Center" /> 
                        <HeaderStyle HorizontalAlign="Center"/>
                        </asp:BoundField>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:实验室设备管理系统ConnectionString3 %>" SelectCommand="SELECT [Pld], [Situation], [EName], [Etype], [PPrize], [Pbaoguan], [PPersonuse] FROM [固设]"></asp:SqlDataSource>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
