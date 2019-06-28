<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Search_Student.aspx.cs" Inherits="screens_Student_Search_Student" %>

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
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
    <h1>Buscar Estudiante</h1>
     <form id="form4" runat="server">
         <table>
            <tr>
                <td>rut Estudiante</td>
                <td><asp:textbox CssClass="txt" ID="txt_rut" runat="server"></asp:textbox></td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_rut" ErrorMessage="Porfavor, escriba un rut"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_rut" ErrorMessage="Por favor, escriba un rut" ValidationExpression="[0-9]*(?:-[0-9])"></asp:RegularExpressionValidator></td>
            </tr>
             <tr>
                <td colspan="2"><asp:button CssClass="btn" runat="server" text="Buscar" OnClick="Unnamed1_Click" /></td>     
             </tr>
         </table>
     </form>
</asp:Content>

