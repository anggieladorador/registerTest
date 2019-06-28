using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Phone_Add_Phone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string rut = Session["rut"].ToString();
        lbl_student.Text = rut;

    }

    protected void btn_Send_Click(object sender, EventArgs e)
    {
        Response.Redirect("/controller/Phone_Controller.aspx?action=addPhone&number="+txt_number.Text+"&rut="+Session["rut"].ToString());
    }
}