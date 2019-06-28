using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Student_Update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        show_age();
        show_gender();
        if (Session["rut"] == null) return;
        string rut = Session["rut"].ToString();
        Student s = Student_db.Instance.FindByRut(rut);
        txt_rut.Text = s.rut;
       
        

    }
    public void show_age()
    {
        for (int i = 6; i <= 65; i++)
        {
            ddl_age.Items.Add("" + i);
        }
    }
    public void show_gender()
    {
        ddl_gender.Items.Add("Mujer");
        ddl_gender.Items.Add("Hombre");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("/controller/StudentController.aspx?action=update&rut=" + txt_rut.Text + "&name=" + txt_name.Text + "&lastName=" + txt_lastName.Text + "&age=" + ddl_age.Text
          + "&gender=" + ddl_gender.Text);
    }
}