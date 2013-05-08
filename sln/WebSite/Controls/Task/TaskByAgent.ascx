<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskByAgent.ascx.cs" Inherits="WebSite.Controls.Task.TaskByAgent" %>

    <script>
        var agentId = <%=agentId %>;
    </script>
    <script src="../../App_Themes/Js/Model/TaskModel.js" type="text/javascript"></script>
    <script src="../../App_Themes/Js/View/TaskByClientView.js" type="text/javascript"></script>
    <script src="../../App_Themes/Js/Controller/TaskByClientController.js" type="text/javascript"></script>

    <div class="title_box">Tareas de <%=agentName%>
    </div>

    <div class="toolbar">
        Buscar una tarea: <input id="txtFind" search="true" type="text"/>
    </div>

    <div id="rptTask"></div>
    <script template="rptTask" type="text/template">
        <div class="box">
            
            <div class="info">
                
                <span>Agente:<a>{AgentName}</a></span>
                <span>Direccion:<a>{Address}</a></span>
                <span>Estado:<a>{StateName}</a></span>
                <span><p>{Description}</p></span>
                
                <a class="delete" title="Eliminar" value="{ID}">
                    <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
                </a>
                <a class="edit" title="Editar" value="{ID}">
                    <img src="../../App_Themes/Images/Icon/edit.png" />
                </a>
            </div>
        </div>
    </script>
    <script empty="rptTask" type="text/template">
        <p class="center">No se encontraron tareas</p>
    </script>