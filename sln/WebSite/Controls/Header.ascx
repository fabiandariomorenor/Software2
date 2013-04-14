<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="WebSite.Controls.Header" %>

<%@ Register TagPrefix="uc" TagName="Login" Src="~/Controls/Login.ascx" %>

<link href="../App_Themes/Css/Login.css" rel="stylesheet" type="text/css" />

<%--Header--%>
<div class="header private">
    <%--Crear--%>
    
    <div class="project create">
        <a href="/index.aspx" class="logo"> ManAgent Task Planner® </a>
        <a class="name"><asp:Literal ID="ltName" Visible="false" runat="server"></asp:Literal></a>
    </div>

    <div class="menu">

        <a class="home public" href="/home.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/home.png" />Inicio</a>
        <a class="design public" href="/design.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/diseno.png" />Diseño</a>
        <a class="method public" href="/Methodology.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/metodologia.png" />Metodologia</a>
        <a class="tech public" href="/Technologies.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/tecnologias.png" />Tecnologias</a>
        
        <a class="version public" href="/Versioning.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/repositorio.png" />Versionamiento</a>
    </div>

    <asp:Panel ID="pnlLogin"  runat="server">
        <div class="create" style="float:right">
            <a id="lnkLogin" class="logo">Login</a>
        </div>
    </asp:Panel>
    
</div>

<uc:Login ID="login" runat=server />