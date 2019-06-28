<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="screens_Register" %>

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
                    <td><li><a href="../Default.aspx">Volver</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Show_students.aspx">Ver todos los alumnos</a></li></td>
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
    <h1>Registro</h1>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td><asp:Label ID="lbl_rut" Text="Rut: " runat="server"></asp:Label></td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_rut" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_rut" ErrorMessage="Por favor, escriba un rut" ToolTip=" " ValidationExpression="[0-9]*(?:-[0-9])"></asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_name" Text="Nombre " runat="server"></asp:Label> </td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_name" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_name" ErrorMessage="Por favor, solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_name" ErrorMessage="No queremos  vacios"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_lastName" Text="Apellido " runat="server"></asp:Label></td>
                <td>
                    <asp:TextBox CssClass="txt" ID="txt_lastName" runat="server"></asp:TextBox>
                 </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_lastName" ErrorMessage="Por favor,  solo letras" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_lastName" ErrorMessage="No queremos vacios"></asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_age" Text="Edad " runat="server"></asp:Label> </td>
                <td>
                    <asp:DropDownList CssClass="ddl" ID="ddl_age" runat="server">
                    </asp:DropDownList>
                 </td>
                <td>&nbsp;</td>
            </tr>
             <tr>
                <td><asp:Label ID="lbl_gender" Text="Sexo " runat="server"></asp:Label> </td>
                <td>
                    <asp:DropDownList CssClass="ddl" ID="ddl_gender" runat="server">
                    </asp:DropDownList>
                 </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="2"><asp:Button CssClass="btn" ID="btn_send" Text="Enviar" runat="server" OnClick="btn_send_Click"/></td>
            </tr>
        </table>
    </form>
</asp:Content>

