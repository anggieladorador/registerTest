using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Show_students : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Student[] StudentList = Student_db.Instance.getAll();
        for(int i =0; i<=StudentList.Count()-1; i++ )
        {
            TableRow newrow = new TableRow();
            TableCell newcell = new TableCell();
            newcell.Text = "<a href='/controller/StudentController.aspx?action=show&rut="+StudentList.ElementAt(i).rut+"'>"+ StudentList.ElementAt(i).rut+"</a>";
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = StudentList.ElementAt(i).name;
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = StudentList.ElementAt(i).lastName;
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = StudentList.ElementAt(i).age.ToString();
            newrow.Cells.Add(newcell);
            if (StudentList.ElementAt(i).gender == 0)
            {
                newcell = new TableCell();
                newcell.Text ="Mujer";
                newrow.Cells.Add(newcell);
            }
            else
            {
                newcell = new TableCell();
                newcell.Text = "Hombre";
                newrow.Cells.Add(newcell);
            }
            newcell = new TableCell();
            newcell.Text ="<a href='/controller/StudentController.aspx?action=delete&rut="+StudentList.ElementAt(i).rut+"'>Eliminar</a>";
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = "<a href='/controller/StudentController.aspx?action=updateView&rut=" + StudentList.ElementAt(i).rut + "'>Modificar</a>";
            newrow.Cells.Add(newcell);
            student_table.Rows.Add(newrow);
            newcell = new TableCell();
            newcell.Text = "<a href='/controller/Phone_Controller.aspx?action=addPhoneView&rut=" + StudentList.ElementAt(i).rut +"'>Agregar Telefono</a>";
            newrow.Cells.Add(newcell);//volver a comentar si no funciona
            student_table.Rows.Add(newrow); 

        } 
       
    }
}