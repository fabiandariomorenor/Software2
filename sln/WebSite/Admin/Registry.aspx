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
                    <span>Documento:</span><input id="txtDocument" type="text"/>
                </div>
                <div class="row">
                    <span>Nombre:</span><input id="txtName" type="text"/>
                </div>
                <div class="row">
                    <span>Teléfono:</span><input id="txtPhone" type="text"/>
                </div>
                <div class="row">
                    <span>Contraseña:</span><input id="txtPassword" type="password"/>
                </div>
            </div>

            <div class="hide">
                <h2 rel="client" >Datos del Cliente</h2>
                <div rel="client" class="data hide">
                    <div class="row">
                        <span>Dirección:</span><input id="txtAddress" type="text"/>
                    </div>
                    <div class="row large">
                        <span>Fecha de expedición del documento:</span><input id="txtDate" type="text"/>
                    </div>
                </div>
            </div>

            <div class="hide">
                <h2 rel="agent">Datos del Agente</h2>
                <div rel="agent" class="data">
                    <div class="row">
                        <span>Especialización:</span><input id="txtSpecialized" type="text"/>
                    </div>
                </div>
                <div class="data">
                    <div class="row buttoms">
                        <a id="lnkCancel" class="not_buttom">Cancelar</a>
                        <a id="lnkSave" class="buttom">Guardar</a>
                    </div>
                </div>
            </div>
        </p>
     </div>
</asp:Content>
