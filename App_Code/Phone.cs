using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Phone
/// </summary>
public class Phone
{
    public int id;
    public string rut;
    public int number;
   
    public Phone(int id, string rut, int number)
    {
        this.id = id;
        this.rut = rut;
        this.number = number;
    }
}