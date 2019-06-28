<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Result.aspx.cs" Inherits="screens_Result" %>

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
                    <td><li><a href="Default.aspx">Inicio</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Student/Register.aspx">Registrar Estudiantes</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Student/Show_students.aspx">Ver Estudiantes</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Student/Search_Student.aspx">Buscar Estudiante</li></td>
                </tr>
                <tr>
                    <td><li><a href="Phone/SearchNumber.aspx">Buscar por numero</a></li></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
    <h1><asp:label id="lbl_msje" runat="server" text="Label"></asp:label></h1>
</asp:Content>

