<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Design.aspx.cs" Inherits="WebSite.Design" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="App_Themes/Css/Design.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%--Titulo--%>
    <h1>Diseño de la Aplicación</h1>

    <p class="paragraph">A continuación encontrara los diagramas de clases, casos de uso, datos y secuencia de la aplicación</p>
    <%--Titulo--%>
    <h2>Diagrama de Clases</h2>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <a href="/App_Themes/Images/Analysis/UML_Clases.png" alt="Click para ampliar"><img src="/App_Themes/Images/Analysis/UML_Clases.png" width="665px" /></a>
        </div>
    </div>
    <p>Por favor de click sobre la imagen para descargar</p>



    <%--Titulo--%>
    <h2>Diagrama de Clases</h2>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <a href="/App_Themes/Images/Analysis/Diagrama de Base de Datos.jpg" alt="Click para ampliar"><img src="/App_Themes/Images/Analysis/Diagrama de Base de Datos.jpg" width="665px" /></a>
        </div>
    </div>
    <p>Por favor de click sobre la imagen para descargar</p>


    <%--Titulo--%>
    <h2>Diagrama de Caos de Uso</h2>

    <%--Galeria--%>
    <div class="gallery">
       <div class="principal_image">
            <a href="/App_Themes/Images/Analysis/Casos de Uso.png" alt="Click para ampliar"><img src="/App_Themes/Images/Analysis/Casos de Uso.png" width="665px" /></a>
        </div>              
    </div>
    <p>Por favor de click sobre la imagen para descargar</p>


     <%--Titulo--%>
    <h2>Diagrama de Secuencia</h2>

    <%--Galeria--%>
    <div class="gallery">
       <div class="principal_image">
            <a href="/App_Themes/Images/Analysis/Secuencia.png" alt="Click para ampliar"><img src="/App_Themes/Images/Analysis/Secuencia.png" width="665px" /></a>
        </div>              
    </div>
    <p>Por favor de click sobre la imagen para descargar</p>

</asp:Content>
