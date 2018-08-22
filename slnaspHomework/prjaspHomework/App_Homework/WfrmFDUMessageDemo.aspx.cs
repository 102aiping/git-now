using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjaspHomework
{
    public partial class WfrmFDUMessageDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMessage.Visible = false;
        }

        protected void FormView1_PageIndexChanging(object sender, FormViewPageEventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
          string message=e.Values["fMessage"].ToString();
            if (string.IsNullOrEmpty(message))
            {
                lblMessage.Visible = true;
                e.Cancel = true;
                return;
            }
            lblMessage.Text = "內容必須填寫";
            if (message.Length < 2)
            {
                lblMessage.Visible = true;
                lblMessage.Text = "內容必須大於兩個字";
                e.Cancel = true;
                return;
            }e.Values["fDate"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }
}