<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Show_Student.aspx.cs" Inherits="screens_Show_Student" %>

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
                    <td><li><a href="../Default.aspx">Inicio</a></li></td>
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
                    <td><li><a href="../Phone/SearchNumber.aspx">Ver numeros</a></li></td>
                </tr>

            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
    <h1>Datos del estudiante</h1>
    <div id="student_data" >
        <asp:Table ID="table" runat="server">
        <asp:TableRow>
            <asp:TableCell>rut</asp:TableCell>
            <asp:TableCell>nombre</asp:TableCell>
            <asp:TableCell>apellido</asp:TableCell>
             <asp:TableCell>edad</asp:TableCell>
             <asp:TableCell>sexo</asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
              <asp:TableCell ID="txt_rut" runat="server"></asp:TableCell>
            <asp:TableCell ID="txt_name" runat="server"></asp:TableCell>
            <asp:TableCell ID="txt_lastName" runat="server"></asp:TableCell>
              <asp:TableCell ID="txt_age" runat="server"></asp:TableCell>
             <asp:TableCell ID="txt_gender" runat="server"></asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
   
    <div id="phone_data" style="margin-top:50px">
         <asp:Table id="phone_table" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">id</asp:TableCell>
            <asp:TableCell runat="server">numero</asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </div>
</asp:Content>

