<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ClientList.ascx.cs" Inherits="WebSite.Controls.Client.ClientList" %>
<%@ Register TagPrefix="uc" TagName="Registry" Src="~/Controls/Registry.ascx" %>

<div class="back_modal"></div>
<div class="modal_content">
    <h1>Informacion del Cliente</h1>
    <uc:Registry ID="Registry1" Rol="3" runat=server />
</div>


<script src="../../App_Themes/Js/Model/ClientModel.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/View/ClientView.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/Controller/ClientController.js" type="text/javascript"></script>

<div class="title_box">Clientes

<a id="btnAdd" class="buttom">+ Nuevo</a>
</div>

<div class="toolbar">
    Buscar un agente: <input id="txtFind" search="true" type="text"/>
</div>

<div id="rptClient"></div>
<script template="rptClient" type="text/template">
    <div class="box">
        <img class="icon" src="../App_Themes/Images/People/{Image}.png" width="50px" />
        <div class="info">
        
            <div class="Name title">{Name}</div>
            <span>Documento:<a>{Document}</a></span>
            <span>Direccion:<a>{Address}</a></span>
            <span>Teléfono:<a>{Phone}</a></span>
            
            <a class="delete" title="Eliminar" value="{Document}">
                <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
            </a>
            <a class="edit" title="Editar" value="{Document}">
                <img src="../../App_Themes/Images/Icon/edit.png" />
            </a>
        </div>
    </div>
</script>
<script empty="rptClient" type="text/template">
    <p class="center">No se encontraron clientes</p>
</script>

