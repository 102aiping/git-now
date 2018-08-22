using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjaspHomework.App_Homework
{
    public partial class WfrmBoardDetail1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String id = Request.QueryString["hid"];
            if (string.IsNullOrEmpty(id))
                Response.Redirect("WfrmBoardDemo1.aspx");
            SqlDataSource sds = new SqlDataSource();
            sds.ConnectionString = @"Data Source=.;Initial Catalog=dbDemo;Integrated Security=True";
            sds.SelectCommand = "SELECT*FROM tHead WHERE fId=@kk";
            sds.SelectParameters.Add("kk",id);
            DataView dv = sds.Select(DataSourceSelectArguments.Empty) as DataView;
            if (dv.Table.Rows.Count <= 0)
                Response.Redirect("WfrmBoardDemo1.aspx");
            Label1.Text = dv[0]["fSubject"].ToString();

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            String id = Request.QueryString["hid"];
            e.Values["fDate"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
            e.Values["fHeadId"] = id;


        }
    }
}