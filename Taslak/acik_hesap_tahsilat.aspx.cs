using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Taslak
{
    public partial class acik_hesap_tahsilat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Global.SESSION_DURUMU == null)
            {
                Session.Clear();
                Session.RemoveAll();
                Response.Redirect("login.aspx");
            }
        }
    }
}