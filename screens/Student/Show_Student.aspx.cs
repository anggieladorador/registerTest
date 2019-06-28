using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Show_Student : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["rut"] == null) return;

        string rut = Session["rut"].ToString();
        Student s= Student_db.Instance.FindByRut(rut);
        txt_rut.Text = s.rut;
        txt_name.Text = s.name;
        txt_lastName.Text = s.lastName;
        txt_age.Text = s.age.ToString();

        if (s.gender == 0)
        {
            txt_gender.Text = "Mujer";
        }
        else
        {
            txt_gender.Text = "Hombre";
        }
        Phone[] phones = Phone_db.Instance.FindNumberByRut(rut).ToArray(); 
        for(int i=0; i<phones.Length; i++)
        {

            System.Diagnostics.Debug.WriteLine(phones[i].number);
               TableRow newrow = new TableRow();
                TableCell newcell = new TableCell();
                newcell.Text = phones[i].id.ToString();
                newrow.Cells.Add(newcell);
                newcell = new TableCell();
                newcell.Text = phones[i].number.ToString();
                newrow.Cells.Add(newcell);
                phone_table.Rows.Add(newrow);
        }

    }
}