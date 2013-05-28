<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Patrones.aspx.cs" Inherits="WebSite.Versioning" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 319px;
            height: 206px;
            text-align: center;
        }
        .style2
        {
            width: 315px;
            height: 544px;
        }
        .style3
        {
            text-align: justify;
        }
        .style4
        {
            font-size: large;
        }
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            width: 466px;
            height: 245px;
        }
        .style8
        {
            width: 212px;
            height: 564px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Patrones de Software</h1>
    <h2>MVC&nbsp; Modelo Vista - Controlador</h2>
    <p class="style3">
        <img align="middle" alt="mvc" class="style1" 
            src="App_Themes/Images/Patterns/MVC-Process.png" />El <b>Modelo Vista 
        Controlador (MVC)</b> es un patrón de Arquitectura de Software que separa los 
        Datos&nbsp; y la Lógica de Negocio de una aplicación de Interfaz Gráfica de 
        Usuario GUI. Para ello MVC propone la construcción de tres Componentes distintos 
        que son el <b>modelo</b>, la <b>vista</b> y el <b>controlador</b>, es decir, por 
        un lado define componentes para la representación de la información, y por otro 
        lado para la interacción del usuario. (1)</p>
    <p>
        <img alt="mvcpack" class="style2" src="App_Themes/Images/Patterns/MVC.PNG" /></p>
    <p>&nbsp;</p>
    <h2 class="style4">PATRON DAO DATA ACCESS OBJECT</h2>
    <p><span class="notranslate" onmouseout="_tipoff()" onmouseover="_tipon(this)">El 
        Data Access Object (DAO) es un patrón de diseño proporciona una técnica para la 
        separación de la persistencia de objetos y lógica de acceso a datos de cualquier 
        mecanismo de persistencia en particular o API. El objetivo de diseño del patrón 
        DAO proporciona flexibilidad para cambiar mecanismo de persistencia de una 
        aplicación con el tiempo sin modificar la lógica de la aplicación que interactúa 
        con el nivel de DAO.</span></p>
    <p style="margin-left: 40px">
        <img alt="patrondao" class="style7" 
            src="App_Themes/Images/Patterns/PatronDAO.png" /></p>
    <div class="style6" data-canvas-width="177.71448387031552" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 104.308px; top: 507.76px; transform: scale(1.21722, 1); transform-origin: 0% 0% 0px;">
        BusinessObject : Es el objeto que quiere acceder a la fuente de datos para poder 
        almacenar o consultar datos.
    </div>
    <div class="style6" data-canvas-width="11.205200748443604" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 64.7073px; top: 564.481px; transform: scale(1.60074, 1); transform-origin: 0% 0% 0px;">
    </div>
    <div class="style6" data-canvas-width="216.13907043685919" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 104.308px; top: 564.481px; transform: scale(1.20077, 1); transform-origin: 0% 0% 0px;">
        DataAccessObject: Abstrae al BusinessObject de los detalles del acceso a la 
        fuente de datos.
    </div>
    <div class="style6" data-canvas-width="11.205200748443604" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 64.7073px; top: 621.202px; transform: scale(1.60074, 1); transform-origin: 0% 0% 0px;">
    </div>
    <div class="style6" data-canvas-width="133.47552891540525" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 104.308px; top: 621.202px; transform: scale(1.19175, 1); transform-origin: 0% 0% 0px;">
        DataSource: Representa la implementación de la fuente de datos en sí.
    </div>
    <div class="style6" data-canvas-width="11.205200748443604" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 64.7094px; top: 655.443px; transform: scale(1.60074, 1); transform-origin: 0% 0% 0px;">
    </div>
    <div class="style6" data-canvas-width="195.36524504928585" 
        data-font-name="Verdana" dir="ltr" 
        style="font-family: sans-serif; left: 104.31px; top: 655.362px; transform: scale(1.26042, 1); transform-origin: 0% 0% 0px;">
        Transfer Object: Es un objeto intermedio entre el BusinessObject y el 
        DataAcessObject
        <br />
    </div>
    <p>
        <img alt="daopack" class="style8" src="App_Themes/Images/Patterns/dao.PNG" /></p>
    <p>Referencias:</p>
    <p>(1) . http://es.wikipedia.org/wiki/Modelo_Vista_Controlador</p>
    <p>(2) http://es.wikipedia.org/wiki/Data_Access_Object</p>



</asp:Content>
