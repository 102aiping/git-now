using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjaspHomework.App_Homework
{
    public partial class WfrmBoardDemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void FormView1_ItemInserting(object sender, FormViewInsertEventArgs e)
        {
            e.Values["fDate"] = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
        }
    }
}