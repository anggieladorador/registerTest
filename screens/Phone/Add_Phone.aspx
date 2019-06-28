<%@ Page Title="" Language="C#" MasterPageFile="~/screens/MasterPage.master" AutoEventWireup="true" CodeFile="Add_Phone.aspx.cs" Inherits="screens_Phone_Add_Phone" %>

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
                    <td><li> <a href="../Student/Search_Student.aspx">Buscar Alumnos</a></li></td>
                </tr>
                <tr>
                    <td><li><a href="Show_phones.aspx">Ver numeros</a></li></td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="content_show" Runat="Server">
     <form id="form1" runat="server">
         <h1>Registrar numero</h1>
         <table>
             <tr> 
                 <td>
                     <asp:Label ID="lbl_student" runat="server" ></asp:Label>
                 </td>
             </tr>
             <tr> 
                 <td>
                     <asp:TextBox CssClass="txt" ID="txt_number" runat="server"></asp:TextBox>
                 </td>
                 <td>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_number" ErrorMessage="Solo numeros" ValidationExpression="[0-9]+"></asp:RegularExpressionValidator>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_number" ErrorMessage="No queremos espacios vacios"></asp:RequiredFieldValidator>
                 </td>
             </tr>
             <tr> 
                 <td>
                     <asp:Button CssClass="btn" ID="btn_Send" runat="server" Text="Enviar" OnClick="btn_Send_Click" />
                 </td>
             </tr>
         </table>
     </form>    
</asp:Content>


