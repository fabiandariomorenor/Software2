﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Registry.ascx.cs" Inherits="WebSite.Controls.Registry" %>

<link href="../App_Themes/Css/Registry.css" rel="stylesheet" type="text/css" />

<script>
    var rolId = <%=Rol %>;
</script>

<script src="/App_Themes/Js/Model/UserModel.js" type="text/javascript"></script>
<script src="/App_Themes/Js/View/RegistryView.js" type="text/javascript"></script>
<script src="/App_Themes/Js/Controller/RegistryController.js" type="text/javascript" ></script>


    <div class="data">
        <div class="row">
            <span>Documento:</span><input id="txtDocument" Integer="true" maxlength="10" type="text"/><span id="lblDocumentEdit" style="display:none;"></span>
        </div>
        <div class="row">
            <span>Nombre:</span><input id="txtName" maxlength="50" type="text"/>
        </div>
        <div class="row">
            <span>Teléfono:</span><input id="txtPhone" Integer="true" maxlength="10" type="text"/>
        </div>
        <div rel="agent" class="row hide">
            <span>Contraseña:</span><input id="txtUserPassword" maxlength="20" type="password"/>
        </div>
    </div>

    <div rel="client" class="data hide">
        <div class="row">
            <span>Dirección:</span><input id="txtAddress" maxlength="50" type="text"/>
        </div>
        <div class="row large">
            <span>Fecha de expedición del documento:</span><input id="txtDate" type="text"/>
        </div>
    </div>
    
    <div rel="agent" class="data hide">
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