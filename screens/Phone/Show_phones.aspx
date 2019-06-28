<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Show_phones.aspx.cs" Inherits="screens_Phone_Show_phone" %>

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
                    <td><li><a href="../Student/Register.aspx">Registrar Estudiantes</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="../Student/Show_students.aspx">Ver Estudiantes</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="../Student/Search_Student.aspx">Buscar Estudiante</li></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
    <h1>Numeros de Estudiantes</h1>
    <asp:Table ID="phone_table" runat="server">
        <asp:TableRow runat="server">
            <asp:TableCell runat="server">
                id
            </asp:TableCell>
            <asp:TableCell runat="server">
                numero
            </asp:TableCell>
            <asp:TableCell runat="server">
                estudiante
            </asp:TableCell>
             <asp:TableCell runat="server">
                acciones
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

