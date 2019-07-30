using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace 测试
{
    public partial class 被装调换 : System.Web.UI.Page
    {
        #region 不批准
        protected void allo_disap_Click(object sender, EventArgs e)
        {
            Button btn = sender as Button;
            GridViewRow row = btn.Parent.Parent as GridViewRow;
            string name = row.Cells[0].Text;
            string otype = row.Cells[1].Text;
            string dtype = row.Cells[2].Text;
            string sex = row.Cells[3].Text;
            string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(str_cnn);
            conn.Open();
            string cmdstr = string.Format("update 调换表 set 申请状态='不批准' where 被装名称='{0}' and 原型号='{1}' and 目标型号='{2}' and 性别='{3}'", name, otype, dtype, sex);
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
            string otype = row.Cells[1].Text;
            string dtype = row.Cells[2].Text;
            string sex = row.Cells[3].Text;
            string n = row.Cells[4].Text;
            int num =int.Parse(n);
            string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(str_cnn);
            conn.Open();
            string cmdstr = string.Format("update 库存表 set 被装数量=被装数量-{0} where 被装名称='{1}' and 被装型号='{2}' and 性别='{3}'", num, name, dtype, sex);
            SqlCommand com = new SqlCommand(cmdstr, conn);//创建查询命令
            SqlDataReader dr = com.ExecuteReader(CommandBehavior.CloseConnection);//执行
            SqlConnection conn1 = new SqlConnection(str_cnn);
            conn1.Open();
            string cmdstr1 = string.Format("update 库存表 set 被装数量=被装数量+{0} where 被装名称='{1}' and 被装型号='{2}' and 性别='{3}'", num, name, otype, sex);
            SqlCommand com1 = new SqlCommand(cmdstr1, conn1);//创建查询命令
            SqlDataReader dr1 = com1.ExecuteReader(CommandBehavior.CloseConnection);//执行
            SqlConnection conn2 = new SqlConnection(str_cnn);
            conn2.Open();
            string cmdstr2 = string.Format("update 调换表 set 申请状态='批准' where 被装名称='{0}' and 原型号='{1}' and 目标型号='{2}' and 性别='{3}'", name, otype, dtype, sex);
            SqlCommand com2 = new SqlCommand(cmdstr2, conn2);//创建查询命令
            SqlDataReader dr2 = com2.ExecuteReader(CommandBehavior.CloseConnection);//执行
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
}