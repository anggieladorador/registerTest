using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Descripción breve de Phone_db
/// </summary>
public class Phone_db
{
    private static Phone_db instance;
    public static Phone_db Instance
    {
        get
        {
            if(instance == null)
            {
                instance = new Phone_db();
            }
            return instance;
        }
    }
    List<Phone> Phone_list;
    private Phone_db()
    {
        Phone_list = new List<Phone>();
    }
    public Phone[] getAll()
    {
        return Phone_list.ToArray();
    }
    public void AddPhone(int number, string rut)
    {
        Phone_list.Add(new Phone(Phone_list.Count()+1, rut /*null*/, number));
    }
    public void DeletePhone(int id)
    {
        Phone_list.RemoveAll( x => x.id.Equals(id));
    }
    public Phone findById(int id)
    {
        for (int i = 0; i < Phone_list.Count(); i++)
        {
            if (Phone_list[i].id.Equals(id))
            {
                Phone phone = Phone_list[i];
                return phone;
            }
        }
        return null;
    }
    public Phone findByNumber(int number)
    {
        for (int i = 0; i < Phone_list.Count(); i++)
        {
            if (Phone_list[i].number.Equals(number))
            {
                Phone phone = Phone_list[i];
                return phone;
            }
        }
        return null;
    }
    public List<Phone> FindNumberByRut(string rut)
    {
        List<Phone> phones = new List<Phone>();
        for (int i = 0; i < Phone_list.Count(); i++)
        {
            if (Phone_list[i].rut.Equals(rut))
            {
                phones.Add(Phone_list[i]);
                
            }
        }
        return phones;
    }

   /* public Phone FindNumberByRut(string rut) {
        for(int i=0; i<Phone_list.Count(); i++)
        {
            if (Phone_list[i].rut.Equals(rut))
            {
                Phone phone = Phone_list[i];
                return phone;
            }
        }
         return null;
    }*/
    public void UpdatePhone(int id, int number)
    {
        Phone p = findById(id);
        p.number = number;

    }
    public void UpdatePhone2(int id, int number, string rut)
    {
        Phone p = findById(id);
        p.number = number;
        p.rut = rut;

    }
    
}