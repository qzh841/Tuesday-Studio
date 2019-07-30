<%@ WebHandler Language="C#" Class="Handler" %>

using System;
using System.Web;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using System.Data;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;





public class Handler : IHttpHandler {

    string con = "User id=sa;Password=123;Database=实验室设备管理系统;Server=LAPTOP-F2F8GBKQ\\SQLEXPRESS";
 
    DataSet ds = new DataSet();
    SqlDataAdapter da = new SqlDataAdapter();
    JavaScriptSerializer jsS = new JavaScriptSerializer();
    List<object> lists = new List<object>();
    string result = "";
    
    public void ProcessRequest (HttpContext context) {


        string command = context.Request["cmd"];


        switch (command)
        {
            case "pie":
                GetPie(context);
                break;
            case "bar":
                GetBars(context);
                break;
         
        };

    }


    public void GetPie(HttpContext context)
        {
            string sql = string.Format("select EName as name, count(*) as count from 固设 where  Situation='可用'  group by EName ");
            ds = GetData(sql);
           
            lists = new List<object>(); 
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                var obj = new { name = dr["name"], value = dr["count"] };
                lists.Add(obj); 
            } 

            jsS = new JavaScriptSerializer(); 
            result = jsS.Serialize(lists); 
            context.Response.Write(result);
        
        }



    public void GetBars(HttpContext context)
        {
            string sql = string.Format("select EName as name, count(*) as count from 固设 where  Situation='报废'  group by EName ");
          
            ds = GetData(sql);
            lists = new List<object>();

            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                var obj = new { name = dr["name"], value = dr["count"] };
                lists.Add(obj);

            } 
        
            jsS = new JavaScriptSerializer();
            result = jsS.Serialize(lists);
            context.Response.Write(result);
        }

   

    
    
    
    public DataSet GetData(string sql)
    { 
        ds = new DataSet();
        da = new SqlDataAdapter(sql, con);
        da.Fill(ds);
        return ds;
    
    }
    
    
    
    
    
    public bool IsReusable {
        get {
            return false;
        }
    }

}