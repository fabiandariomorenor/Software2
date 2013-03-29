<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AgentList.ascx.cs" Inherits="WebSite.Controls.Agent.AgentList" %>
<%@ Register TagPrefix="uc" TagName="Registry" Src="~/Controls/Registry.ascx" %>

<div class="back_modal"></div>
<div class="modal_content">
    <h1>Informacion del Agente</h1>
    <uc:Registry ID="Registry1" Rol="2" runat=server />
</div>


<script src="../../App_Themes/Js/Model/AgentModel.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/View/AgentView.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/Controller/AgentController.js" type="text/javascript"></script>

<div class="title_box">Agentes

<a id="btnAdd" class="buttom">+ Nuevo</a>
</div>

<div class="toolbar">
    Buscar un agente: <input id="txtFind" search="true" type="text"/>
</div>

<div id="rptAgent"></div>
<script template="rptAgent" type="text/template">
    <div class="box">
        <img class="icon" src="../App_Themes/Images/People/{Image}.png" width="50px" />
        <div class="info">
        
            <div class="Name title">{Name}</div>
            <span>Documento:<a>{Document}</a></span>
            <span>Especializacion:<a>{Specialization}</a></span>
            <span>Tareas Pendientes:<a>2</a></span>
            
        
            <a class="delete" title="Eliminar" value="{Document}">
                <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
            </a>
            <a class="edit" title="Editar" value="{Document}">
                <img src="../../App_Themes/Images/Icon/edit.png" />
            </a>
        </div>
    </div>
</script>
<script empty="rptAgent" type="text/template">
    <p class="center">No se encontraron agentes</p>
</script>

