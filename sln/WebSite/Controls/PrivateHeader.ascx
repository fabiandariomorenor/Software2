<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="PrivateHeader.ascx.cs" Inherits="WebSite.Controls.PrivateHeader" %>

<%@ Register TagPrefix="uc" TagName="Login" Src="~/Controls/Login.ascx" %>

<link href="../App_Themes/Css/Login.css" rel="stylesheet" type="text/css" />

<%--Header--%>
<div class="header private">
    <%--Crear--%>
    
    <div class="project create">
        <a href="/index.aspx" class="logo">Proyecto de Ingeniería de Software 2</a>
        <a class="name"><asp:Literal ID="ltName" Visible="false" runat="server"></asp:Literal></a>
    </div>

    <div class="menu">

        <a class="home" href="/admin/index.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/home.png" />Inicio</a>
        <a class="agent" href="/admin/agent.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/agent.png" />Agentes</a>
        <a class="client" href="/admin/client.aspx"> 
            <img align="middle" src="../App_Themes/Images/Icon/client.png" />Clientes</a>
    
    </div>

    <asp:Panel ID="pnlLogin" Visible="false" runat="server">
        <div class="create" style="float:right">
            <a id="lnkLogin" class="logo">Login</a>
        </div>
    </asp:Panel>
    
</div>

<uc:Login ID="login" runat=server />