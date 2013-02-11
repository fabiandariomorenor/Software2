<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebSite.Index" %>
<%@ Register TagPrefix="uc" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="Developers" Src="Controls/Developers.ascx" %>
<%@ Register TagPrefix="uc" TagName="Activity" Src="Controls/Activity.ascx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/App_Themes/css/General.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Header.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Footer.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            
            <%--Header--%>
            <uc:Header runat=server />

            <%--Content--%>
            <div class="content">
                <%--Columna Izquierda--%>
                <div class="left_column">
                    
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
En ocasiones un usuario desea saber que eventos están ocurriendo o estar por suceder cerca a él, 
ya sea con fines culturales, de diversión o turismo. 
</p>
<p>
Nuestro proyecto quiere dar solución a este problema mediante el desarrollo de un 
sistema de información que a partir de la ubicación del usuario, muestre los eventos
 cercanos a su posición geográfica, dándole la opción de buscar por un rango de fecha,  
 ubicación y/o una categoría, adicionalmente, el sistema de información permitiría a un 
 usuario registrado crear, actualizar, eliminar y consultar sus eventos. Cualquier usuario 
 podrá registrarse en el sistema de información con solo ingresar su nombre, email y contraseña.
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
                </div>

                <%--Columna Derecha--%>
                <div class="right_column">
                    
                    <%--Desarrolladores--%>
                    <div class="box">
                        <div class="title">Equipo de Trabajo</div>
                        <%--Developers--%>
                        <uc:Developers runat=server />
                    </div>

                    <%--Actividades--%>
                    <div class="box">
                        <div class="title">Actividades</div>
                        <%--Developers--%>
                        <uc:Activity runat=server />
                    </div>


                </div>
            </div>

            <%--Footer--%>
            <uc:Footer runat=server />
        </div>
    </form>
</body>
</html>