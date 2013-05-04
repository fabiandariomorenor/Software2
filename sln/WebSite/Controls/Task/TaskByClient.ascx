<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskByClient.ascx.cs" Inherits="WebSite.Controls.Task.TaskByClient" %>


<script>
    var clientId = <%=clientId %>;
</script>
    <script src="../../App_Themes/Js/Model/TaskModel.js" type="text/javascript"></script>
    <script src="../../App_Themes/Js/View/TaskByClientView.js" type="text/javascript"></script>
    <script src="../../App_Themes/Js/Controller/TaskByClientController.js" type="text/javascript"></script>

    <div class="title_box">Tareas de <%=clientName%>

    <a id="btnAdd" href="task.aspx?clientId=<%=clientId %>" class="buttom">+ Nueva</a>
    </div>

    <div class="toolbar">
        Buscar una tarea: <input id="txtFind" search="true" type="text"/>
    </div>

    <div id="rptTask"></div>
    <script template="rptTask" type="text/template">
        <div class="box">
            <img class="icon" src="../App_Themes/Images/People/{Image}.png" width="50px" />
            <div class="info">
        
                
                <span>Agente:<a>{AgentName}</a></span>
                <span>Direccion:<a>{Address}</a></span>
                <span>Estado:<a>{StateName}</a></span>
                <span><p>{Description}</p></span>
                
                

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
