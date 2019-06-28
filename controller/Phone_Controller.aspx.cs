using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controller_Phone_Controller : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["action"].Equals("addPhone"))
        {
            AddPhone();
        }
        else if (Request.Params["action"].Equals("delete"))
        {
            DeletePhone();
        }
        else if (Request.Params["action"].Equals("updateView"))
        {
            UpdateView();
        }
        else if (Request.Params["action"].Equals("update"))
        {
            UpdatePhone();
        }
        else if (Request.Params["action"].Equals("addPhoneView"))
        {
            string rut = Request.Params["rut"];
             Session["rut"]=  rut;
            Response.Redirect("/screens/Phone/Add_Phone.aspx");
        }else if(Request.Params["action"].Equals("search")){
            search();
        }
        

    }
    public void AddPhone()
    {
        string rut = Request.Params["rut"];//borar en caso de no servir
        int number = int.Parse(Request.Params["number"]);
        if (Phone_db.Instance.findByNumber(number)==null)
        {
            Phone_db.Instance.AddPhone(number, rut);
            Response.Redirect("/screens/Phone/Show_phones.aspx");
        }
        else
        {
            string msje = "Oops, otro alumno ya posee este numero";
            Session["msje"] = msje;
            Response.Redirect("/screens/Result.aspx");
        }
        

    }
    public void DeletePhone()
    {
        int id = int.Parse(Request.Params["id"]);
        System.Diagnostics.Debug.WriteLine(id);
        Phone_db.Instance.DeletePhone(id);
        Response.Redirect("/screens/Default.aspx");
    }
    public void UpdatePhone()
    {
        int id = int.Parse(Request.Params["id"]);
        int number = int.Parse(Request.Params["number"]);
        Phone_db.Instance.UpdatePhone(id, number);
        Response.Redirect("/screens/Phone/Show_phones.aspx");
    }
    public void UpdateView()
    {
        int id = int.Parse(Request.Params["id"]);
        System.Diagnostics.Debug.WriteLine(id);
        Session["id"] = id;
        Response.Redirect("/screens/Phone/Update_Phone.aspx");
    }
    public void search()
    {
        int number = int.Parse(Request.Params["number"]);
        if (Phone_db.Instance.findByNumber(number) == null)
        {
            string msje = "Oops,no hay alumnos que posean este numero";
            Session["msje"] = msje;
            Response.Redirect("/screens/Result.aspx");
        }else
        {
            string rut = Phone_db.Instance.findByNumber(number).rut;
            Session["rut"] = rut;
            Response.Redirect("/screens/Student/Show_Student.aspx");

        }
    }

}