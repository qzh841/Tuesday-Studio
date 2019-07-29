using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 连队申请被装 : System.Web.UI.Page
{
    #region 查询
    protected void zy_count_search_Click(object sender, EventArgs e)
    {
        pannel.Visible = true;
        Button btn = sender as Button;
        string str_cnn = "User id=sa;Password=123;Database=实验室设备管理系统;Server=DESKTOP-GFLLG1A\\MSSQLSERVER01";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();
        GridViewRow row = btn.Parent.Parent as GridViewRow;

        string username= (string)Session["账号"];
        string sql = string.Empty;
        sql = string.Format("select 被装名称,被装型号,性别,申请数量,队别,申请状态 from 申请表 where 队别 ='{0}' ", username);
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

    #region 提交
    protected void zy_count_add_Click(object sender, EventArgs e)
    {
        Button btn = sender as Button;
        string str_cnn = "User id=sa;Password=123;Database=实验室设备管理系统;Server=DESKTOP-GFLLG1A\\MSSQLSERVER01";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();
        string name = DropDownList1.SelectedValue;
        string type = DropDownList2.SelectedValue;
        string sex = DropDownList3.SelectedValue;
        int number = Convert.ToInt32(TextBox1.Text);
        string cmdstr = string.Format("insert into 申请表(被装名称,被装型号,性别,申请数量,队别,申请状态) values('{0}','{1}','{2}',{3},'{4}','未批复')", name, type, sex, number, (string)Session["账号"]);
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



}