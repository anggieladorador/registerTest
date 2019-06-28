using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Student
/// </summary>
public class Student
{
    public string name;
    public string lastName;
    public string rut;
    public int age;
    public int gender;
    
     public Student(string name, string lastName, string rut, int age, int gender)
    {
        this.name = name;
        this.lastName = lastName;
        this.rut = rut;
        this.age = age;
        this.gender = gender;
    }
   
}