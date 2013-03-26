<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Registry.aspx.cs" Inherits="WebSite.Admin.Registry" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Registry.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--Titulo--%>
    <h1>Registro</h1>

    <%--Informacion--%>
    <div class="information">
        <p>
            Por favor ingrese los datos del usuario

            <h2>Datos Basicos</h2>
            <div class="data">
                <div class="row">
                    <span>Rol:</span>
                    <select></select>
                </div>
                <div class="row">
                    <span>Documento:</span><input type="text"/>
                </div>
                <div class="row">
                    <span>Nombre:</span><input type="text"/>
                </div>
                <div class="row">
                    <span>Teléfono:</span><input type="text"/>
                </div>
                <div class="row">
                    <span>Contraseña:</span><input type="password"/>
                </div>
            </div>

            <h2>Datos del Cliente</h2>
            <div class="data">
                <div class="row">
                    <span>Dirección:</span><input type="text"/>
                </div>
                <div class="row large">
                    <span>Fecha de expedición del documento:</span><input type="text"/>
                </div>
            </div>

            <h2>Datos del Agente</h2>
            <div class="data">
                <div class="row">
                    <span>Especialización:</span><input type="text"/>
                </div>
            </div>

            <a class="buttom">Guardar</a>
            <a class="not_buttom">Cancelar</a>
        </p>
     </div>
</asp:Content>
