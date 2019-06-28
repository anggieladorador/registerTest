<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="SearchNumber.aspx.cs" Inherits="screens_Phone_SearchNumber" %>

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
    <form id="form1" runat="server">
        <h1>Buscar Numero</h1>
        <table>
            <tr>
                <td>Numero de telefono</td>
                <td><asp:TextBox CssClass="txt" runat="server" ID="txt_number"></asp:TextBox></td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_number" ErrorMessage="Solo numeros" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_number" ErrorMessage="No queremos vacios"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button CssClass="btn" runat="server" ID="btn_send" Text="Buscar" OnClick="btn_send_Click" /></td>
            </tr>
        </table>
    </form>
</asp:Content>

