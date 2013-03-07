<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Login.ascx.cs" Inherits="WebSite.Controls.Login" %>

<script src="../App_Themes/Js/Model/UsuarioModel.js" type="text/javascript"></script>
<script src="../App_Themes/Js/View/UsuarioView.js" type="text/javascript"></script>
<script src="../App_Themes/Js/Controller/UsuarioControler.js" type="text/javascript"></script>

<div class="login">
    <h3>Por favor ingrese sus credenciales </h3>
    <span>Documento</span>
    <input id="txtDocumento" maxlength="20" type="text" />

    <span>Contraseña</span>
    <input id="txtPassword" maxlength="20" type="password" />

    <a id="btnLogin" class="buttom">Ingresar</a>
</div>