<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registry.aspx.cs" Inherits="WebSite.Admin.Registry" %>
<%@ Register TagPrefix="uc" TagName="Registry" Src="~/Controls/Registry.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Titulo--%>
    <h1>Registro</h1>

    <%--Informacion--%>
    <div class="information">
        <p>
            Por favor ingrese los datos del usuario

            <uc:Registry runat=server />
        </p>
     </div>
</asp:Content>
