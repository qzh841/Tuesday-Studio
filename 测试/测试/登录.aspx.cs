using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
    protected void login_btn_Click(object sender, EventArgs e)
    {
        string str_username =login_username.Text.Trim();
        string str_password =login_code.Text.Trim();
        string str_identity = login_role.Items[login_role.SelectedIndex].Text;
        string str_cmd = string.Format("select 密码 from 人员信息表 where  账号='{0}' and 身份='{1}'", str_username,str_identity);
       // String str_cnn = Convert.ToString(ConfigurationManager.ConnectionStrings["sqlconn"]);
        string str_cnn = "User id=sa;Password=123;Database=被装管理系统;Server=QZH\\SQLEXPRESS";
        SqlConnection conn = new SqlConnection(str_cnn);
        conn.Open();
        SqlCommand com = new SqlCommand(str_cmd, conn); 
        
        SqlDataReader dr = com.ExecuteReader(CommandBehavior.CloseConnection);
     
        dr.Read();

        if (dr.HasRows)
        {
            string true_psw = dr.GetValue(0).ToString();
           
            

            if (str_password == true_psw)
            {
               if (str_identity=="连队负责人")
                     Response.Write("<script>location='连队页面.html'</script>");
               if (str_identity == "仓库管理员")
                   Response.Write("<script>location='仓库页面.html'</script>");
            }
            else
                Response.Write("<script>alert('密码不正确！');location='登陆界面.aspx'</script>");
         

        }
        else
            Response.Write("<script>alert('登录失败，请检查用户名或密码是否输入正确！');location='登陆界面.aspx'</script>");

        dr.Close();
       
    }
}