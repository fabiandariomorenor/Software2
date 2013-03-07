<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Header.ascx.cs" Inherits="WebSite.Controls.Header" %>

<%@ Register TagPrefix="uc" TagName="Login" Src="~/Controls/Login.ascx" %>

<link href="../App_Themes/Css/Login.css" rel="stylesheet" type="text/css" />

<%--Header--%>
<div class="header">
    <%--Crear--%>
    
    <div class="create">
        <a href="/index.aspx" class="logo">Proyecto de Ingeniería de Software 2</a>
    </div>

    <div class="create" style="float:right">
        <a id="lnkLogin" class="logo">Login</a>
    </div>
    
</div>

<uc:Login ID="login" runat=server />