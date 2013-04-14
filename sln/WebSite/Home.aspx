<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebSite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--Titulo--%>
    <h1>ManAgent Task Planner®</h1>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <img src="/App_Themes/images/Principal.png" />
        </div>
                       
    </div>

    <%--Informacion--%>
    <div class="information">
        
    <p>
        ManAgent Task Planner® permite optimizar los tiempos de atención y respuesta de los agentes de su compañía permitiendo administrar de manera eficiente los recursos a su cargo.
    </p>
    <p>
        Administre la información de sus clientes de forma rápida  y sencilla con la ayuda del módulo  de clientes.
    </p>
    <p>
        ManAgent Task Planner® provee una sus clientes la opción  de calificar el servicio prestado por sus especialistas.
    </p>
    <p>
        Contamos con una interfaz moderna y usable que minimizara la curva de aprendizaje del producto.
    </p>
    <p>
        ManAgent Task Planner® funciona en la nube, por tanto su compañía no deberá  gastar miles de dólares  en infraestructura  tecnológica.
    </p>

    <a href="index.aspx">Como nacio el proyecto?</a>
    </div>
</asp:Content>
