using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class screens_Phone_Show_phone : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Phone[] phoneList = Phone_db.Instance.getAll();
        for(int i =0; i<phoneList.Length; i++)
        {
            
            TableRow newrow = new TableRow();
            TableCell newcell = new TableCell();
            newcell.Text = phoneList[i].id.ToString();
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = phoneList[i].number.ToString();
            newrow.Cells.Add(newcell);
            if (phoneList[i].rut == null)
            {
                newcell = new TableCell();
                newcell.Text ="sin dueño";
                newrow.Cells.Add(newcell);
            }else
            {
                newcell = new TableCell();
                newcell.Text = phoneList[i].rut.ToString();
                newrow.Cells.Add(newcell);
            }
            newcell = new TableCell();
            newcell.Text = "<a href='/controller/Phone_Controller.aspx?action=delete&id="+phoneList[i].id.ToString()+"'>Eliminar</a>";
            newrow.Cells.Add(newcell);
            newcell = new TableCell();
            newcell.Text = "<a href='/controller/Phone_Controller.aspx?action=updateView&id="+phoneList[i].id.ToString()+"'>Modificar</a>";
            newrow.Cells.Add(newcell);
            phone_table.Rows.Add(newrow);
        }

    }
}