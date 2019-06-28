<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Student_Update.aspx.cs" Inherits="screens_Student_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content  ID="Content2" ContentPlaceHolderID="content_menu" Runat="Server">
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
    <form id="form2" runat="server">
        <h1>Modificar datos del estudiante</h1>
        <table>
            <tr>
                <td><asp:Label ID="lbl_rut" Text="Rut: " runat="server"></asp:Label></td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_rut" runat="server" ReadOnly="true"></asp:TextBox>
                </td>
                <td></td>
            </tr>
             <tr>
                <td><asp:Label  ID="lbl_name" Text="Nombre " runat="server"></asp:Label> </td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_name" runat="server" ></asp:TextBox>
                 </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="Solo letras" ValidationExpression="[A-Za-z]+"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_lastName" Text="Apellido " runat="server"></asp:Label></td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_lastName" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_lastName" ErrorMessage="Solo letras" ValidationExpression="[A-Za-z]*"></asp:RegularExpressionValidator>
                 </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_age" Text="Edad " runat="server"></asp:Label> </td>
                <td>
                    <asp:DropDownList CssClass="ddl" ID="ddl_age" runat="server">
                    </asp:DropDownList>
                 </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_gender" Text="Sexo " runat="server"></asp:Label> </td>
                <td>
                    <asp:DropDownList CssClass="ddl" ID="ddl_gender" runat="server">
                    </asp:DropDownList>
                 </td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button CssClass="btn" ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" /></td>
            </tr>
        </table>
    </form>
</asp:Content>

