using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 仓库被装发放 : System.Web.UI.Page
{
    
    #region 不批准
    protected void allo_disap_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.Parent.Parent as GridViewRow;
        string name = row.Cells[0].Text;
        string type = row.Cells[1].Text;
        string sex = row.Cells[2].Text;
        string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();
        string cmdstr = string.Format("update 申请表 set 申请状态='不批准' where 被装名称='{0}' and 被装型号='{1}' and 性别='{2}'", name, type, sex);
        SqlCommand com = new SqlCommand(cmdstr, conn);//创建查询命令
        SqlDataReader dr = com.ExecuteReader(CommandBehavior.CloseConnection);//执行
        try
        {
            GridView1.DataBind();
        }
        catch (Exception err)
        {

        }
        finally
        {
            conn.Dispose();
        }

    }
    #endregion

    #region 批准
    protected void allo_appr_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        GridViewRow row = btn.Parent.Parent as GridViewRow;
        string name = row.Cells[0].Text;
        string type = row.Cells[1].Text;
        string sex = row.Cells[2].Text;
        int num = Convert.ToInt32(row.Cells[3].Text);
        string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();
        string cmdstr = string.Format("update 库存表 set 被装数量=被装数量-{0} where 被装名称='{1}' and 被装型号='{2}' and 性别='{3}'",num, name,type,sex);

        SqlCommand com = new SqlCommand(cmdstr, conn);//创建查询命令
        SqlDataReader dr = com.ExecuteReader(CommandBehavior.CloseConnection);//执行

        string cmdstr1 = string.Format("update 申请表 set 申请状态='批准' where 被装名称='{0}' and 被装型号='{1}' and 性别='{2}'", name, type, sex);
        SqlCommand com1 = new SqlCommand(cmdstr1, conn);//创建查询命令
        SqlDataReader dr1 = com.ExecuteReader(CommandBehavior.CloseConnection);//执行
        try
        {
            GridView1.DataBind();
        }
        catch (Exception err)
        {

        }
        finally
        {
            conn.Dispose();
        }

    }
    #endregion

}
