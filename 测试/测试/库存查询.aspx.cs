using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 设备统计 : System.Web.UI.Page
{
    #region 查询
    protected void zy_count_search_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        zy_count_pannel.Visible = true;
        GridViewRow row = btn.Parent.Parent as GridViewRow;
        string str_cnn = "User id=sa;Password=123;Database=实验室设备管理系统;Server=DESKTOP-GFLLG1A\\MSSQLSERVER01";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();


        string select1 = TextBox1.Text;
        string select2 = DropDownList2.SelectedValue;
        string select3 = DropDownList3.SelectedValue;
        string sql = string.Empty;
        //if (select2=="like")
            sql = string.Format("select 被装名称,被装型号,性别,被装数量 from 库存表 where 被装名称 like '%{0}%' and 被装型号='{1}' and 性别='{2}'", select1, select2, select3);
       // else
        //sql = string.Format("select Ename,Etype,Pld,Pbaoguan,PPersonuse,Situation,PPrize from 固设 where {0} '{1}'", select4,select3);
        //设置SqlDataSource 执行sql语句
        SqlDataSource1.SelectCommand = sql;


        try
        {
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();
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