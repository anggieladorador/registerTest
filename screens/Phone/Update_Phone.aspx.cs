using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Phone_Update_Phone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null) return;
        int id = (int)Session["id"];
        Phone p = Phone_db.Instance.findById(id);
        txt_id.Text = p.id.ToString();
        txt_rut.Text = p.rut.ToString();
        

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        Response.Redirect("/controller/Phone_Controller.aspx?action=update&id="+txt_id.Text+"&number="+txt_number.Text/*+ "&rut" + txt_rut.Text*/);
    }
}