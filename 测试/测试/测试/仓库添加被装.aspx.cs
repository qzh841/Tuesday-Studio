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
    public partial class 仓库添加被装 : System.Web.UI.Page
    {
        #region 添加
        protected void add_Click(object sender, EventArgs e)
        {
            string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
            SqlConnection conn = new SqlConnection(str_cnn);
            conn.Open();
            string cmdstr = string.Format("update 库存表 set 被装数量=被装数量+{0} where 被装名称='{1}' and 被装型号='{2}' and 性别='{3}'", TextBox1.Text, DropDownList1.SelectedValue, DropDownList2.SelectedValue, DropDownList3.SelectedValue);
            try
            {
                SqlCommand cmd = new SqlCommand(cmdstr, conn);
                cmd.ExecuteNonQuery();
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