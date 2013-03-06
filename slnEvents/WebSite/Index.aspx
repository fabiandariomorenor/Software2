<%@ Page Language="C#" AutoEventWireup="true"  MasterPageFile="~/Main.Master" CodeBehind="Index.aspx.cs" Inherits="WebSite.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Titulo--%>
    <h1>Administrador de Eventos</h1>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <img src="/App_Themes/images/Principal.jpg" />
        </div>
                       
    </div>

    <%--Informacion--%>
    <div class="information">
        <p>
        En ocasiones un usuario desea saber que eventos están ocurriendo o estar por suceder cerca a él, ya sea con fines culturales, de diversión o turismo. 
        </p>
        <p>
        Nuestro proyecto quiere dar solución a este problema mediante el desarrollo de un sistema de información, que a partir de la ubicación del usuario, muestre los eventos cercanos a su posición geográfica; dándole la opción de buscar por un rango de fecha,  ubicación y/o categoría.
        </p>
        <p>
        Adicionalmente, el sistema de información permitiría a un usuario registrado crear, actualizar, eliminar y consultar sus eventos.
        </p>
        <p>
        En este sistema de información, cualquier usuario podrá registrarse con solo ingresar su nombre, email y contraseña.
        </p>
                        
                                <h2>OBJETIVO GENERAL </h2>
        Desarrollar un sistema de información que permita administrar eventos. 
        <h2>OBJETIVOS ESPECÍFICOS</h2>
        <p>
            Desarrollar un sistema de información que permita:
            <ul>
            <li>Crear un usuario</li>
            <li>Cambiar la información de un usuario</li>
            <li>Autenticar un usuario</li>
            <li>Crear un evento</li>
            <li>Editar la información de un evento</li>
            <li>Eliminar un evento</li>
            <li>Buscar eventos por fecha, categoría, usuario y ubicación</li>
            <li>Consultar los eventos de un usuario</li>
            </ul>
        </p>
    </div>
</asp:Content>
