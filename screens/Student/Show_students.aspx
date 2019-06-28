<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Show_students.aspx.cs" Inherits="screens_Show_students" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_menu" Runat="Server">
    <div class="div_menu">
        <div class="title_menu">
            <h2>Menu</h2>
        </div>
        <div class="list">  
            <table>
                <tr>
                    <td><li><a href="../Default.aspx"></a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Register.aspx">Registrar Estudiantes</a></li></td>
                </tr>
                <tr>
                    <td><li> <a href="Search_Student.aspx">Buscar Alumnos</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="../Phone/Show_phones.aspx">Ver numeros</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="../Phone/SearchNumber.aspx">Buscar por numero</a></li></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
    <h1>Estudiantes registrados</h1>  
    <asp:Table CssClass="table" ID="student_table" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
               <label class="lbl">Rut</label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <label class="lbl">Nombre</label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <label class="lbl">Apellido</label>
            </asp:TableCell>
             <asp:TableCell runat="server">
                <label class="lbl">Edad</label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <label class="lbl">Sexo</label>
            </asp:TableCell>
            <asp:TableCell runat="server">
                <label class="lbl">Acciones</label>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
     
</asp:Content>

