using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Phone_SearchNumber : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        Response.Redirect("/controller/Phone_Controller.aspx?action=search&number="+txt_number.Text);
    }
}