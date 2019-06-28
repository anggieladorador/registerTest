using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Student_db
/// </summary>
public class Student_db
{
    private static Student_db instance;
    public static Student_db Instance 
    {
        get
        {
            if (instance == null)
            {
                instance  = new Student_db();
            }
            return instance;
        }
    }

    List<Student> student_list;

    private Student_db()
    {
        student_list = new List<Student>();
        
    }

    public Student[] getAll()
    {
        return student_list.ToArray();
    }

    public void AddStudent(string rut, string name, string lastName, int age, int gender)
    {
        student_list.Add(new Student(name, lastName, rut, age, gender));
    }
   public void DeleteStudent(string rut)
    {
        student_list.RemoveAll(x => x.rut.Equals(rut));
    }
    public void UpdateStudent(string rut, string name, string lastName, int age, int gender)
    {
       Student s= FindByRut(rut);
        s.name = name;
        s.lastName = lastName;
        s.age = age;
        s.gender = gender;

    }
   public Student FindByRut(string rut)
    {
        for(int i=0;i<student_list.Count(); i++)
        {
            if (student_list[i].rut.Equals(rut))
            {
                Student s = student_list[i];
                return s;
            }
        }
        return null;   
    }
   
}