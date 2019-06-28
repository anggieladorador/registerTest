<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Update_Phone.aspx.cs" Inherits="screens_Phone_Update_Phone" %>

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
    <form id="form2" runat="server">
        <table>
        <tr>
            <td>ID:</td>
            <td><asp:TextBox  CssClass="txt" ID="txt_id" runat="server"  ReadOnly="true"></asp:TextBox></td>
        </tr>
         <tr>
            <td>Rut:</td>
            <td><asp:TextBox CssClass="txt" ID="txt_rut" runat="server"  ReadOnly="true"></asp:TextBox></td>
        </tr>
        <tr>
            <td>Numero:</td>
            <td><asp:TextBox CssClass="txt" ID="txt_number" runat="server"></asp:TextBox></td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Solo numeros" ControlToValidate="txt_number" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td><asp:Button CssClass="btn" ID="btn_send" runat="server" Text="Enviar" OnClick="btn_send_Click" /></td>
        </tr>
    </table>
    </form>
</asp:Content>

