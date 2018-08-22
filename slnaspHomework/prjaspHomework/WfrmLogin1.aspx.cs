using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjaspHomework
{
    public partial class WfrmLogin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {           
            if (TextBox1.Text == "123" && TextBox2.Text == "123")
            {               
                Response.Redirect("WfrmHome1.aspx");
            }
            Label1.Visible = true;
            Label1.Text = "帳號必為123, 密碼必為123";
        }
    }
}