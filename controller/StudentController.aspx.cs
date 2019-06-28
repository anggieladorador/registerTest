using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class controller_StudentController : System.Web.UI.Page
{
    Student s;
    int n_gender;
    List<Student> lista;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Params["action"].Equals("create"))
        {
            AddStudent();
        }else if (Request.Params["action"].Equals("delete"))
        {
            DeleteStudent();
        }
        else if (Request.Params["action"].Equals("show"))
        {
            ShowStudent();
        }
        else if (Request.Params["action"].Equals("updateView"))
        {
            UpdateStudent_View();
        }
        else if (Request.Params["action"].Equals("update"))
        {
            Update();
        }
        else if (Request.Params["action"].Equals("search"))
        {
            ShowStudent();
        }
        
    }

    public void AddStudent()
    {
        if (!Request.Params["rut"].Equals("") && !Request.Params["name"].Equals("") && !Request.Params["lastName"].Equals(""))
        {
            string rut = Request.Params["rut"];
            string name = Request.Params["name"];
            string lastName = Request.Params["lastName"];
            int age = int.Parse(Request.Params["age"]);
            string gender = Request.Params["gender"];

            System.Diagnostics.Debug.WriteLine(lastName);
            if (gender.Equals("Mujer"))
            {
                n_gender = 0;

            }
            else
            {
                n_gender = 1;
            }
            Student[] StudentList = Student_db.Instance.getAll();
            if (StudentList == null)
            {
                Student_db.Instance.AddStudent(rut, name, lastName, age, n_gender);
                Response.Redirect("/screens/Default.aspx");
            }
            else
            {
                if (Student_db.Instance.FindByRut(rut) == null)
                {
                    Student_db.Instance.AddStudent(rut, name, lastName, age, n_gender);
                    Response.Redirect("/screens/Default.aspx");
                }else
                {
                    string msje = "Oops, ya hay un alumno con ese rut";
                    Session["msje"] = msje;
                    Response.Redirect("/screens/Result.aspx");
                }
                    
            }
           
        }
        else
        {
            string msje = "Oops hubo un error";
            Session["msje"] = msje;
            Response.Redirect("/screens/Result.aspx");
        }
    }
    public void DeleteStudent()
    {
        string rut = Request.Params["rut"];
        Student_db.Instance.DeleteStudent(rut);
        Response.Redirect("/screens/Student/Show_students.aspx");
    }
    public void ShowStudent()
    {
        string rut = Request.Params["rut"];
        Session["rut"] = rut;
        Response.Redirect("/screens/Student/Show_student.aspx");

    }
    public void UpdateStudent_View()
    {
        string rut = Request.Params["rut"];
        Session["rut"] = rut;
        Response.Redirect("/screens/Student/Student_Update.aspx");
    }
    public void Update()
    {
        int gender;
        string rut = Request.Params["rut"];
        string name = Request.Params["name"];
        string lastName = Request.Params["lastName"];
        int age = int.Parse(Request.Params["age"]);
        if (Request.Params["gender"].Equals("Mujer"))
        {
              gender = 0;

        }
        else
        {
             gender = 1;
        }

        Student_db.Instance.UpdateStudent(rut, name, lastName, age, gender);

        Response.Redirect("/screens/Student/Show_students.aspx");
    }
  
}