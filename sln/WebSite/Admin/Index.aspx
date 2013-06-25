<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebSite.Admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Admin.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Css/Schedule.css" rel="stylesheet" type="text/css" />
    <script src="../App_Themes/Js/Library/schedule.js" type="text/javascript"></script>

    <script src="../App_Themes/Js/View/AdminView.js" type="text/javascript"></script>
    <script src="../App_Themes/Js/Controller/AdminController.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<script>
    var busyAgent = <%=busyAgentSerialized %>;
    var freeAgent= <%=freeAgentSerialized %>;
    var pendingClient= <%= pendingClientSerialized%>;
    var taskAgentHour= <%= taskAgentHourSerialized%>;
    var totalAgent= <%= agentCount%>;
    
</script>

    <div class="left">
        <a class="title" href="agent.aspx">Agentes (<%=agentCount %>)</a> 

        <span  class="taskcount">Libres (<%=freeAgent.Count%>) </span>

        <div id="freeAgent"><a>Ninguno</a></div>
         
        <div class="br"></div>
        <span  class="taskcount">Ocupados (<%=busyAgent.Count%>)  </span>
        
        <div id="busyAgent"><a>Ninguno</a></div>

        <a class="title" href="client.aspx">Clientes (<%=clientCount%>)</a>
        
        <span class="taskcount">Por calificar (<%=pendingClient.Count%>) </span><span></span>
        
        <div id="clientReview"><a>Ninguno</a></div>

        <a class="title" >Tareas (<%=taskCount%>)</a>

        <span class="taskcount"><%=executionTaskCount%> </span><a> En ejecucion</a>

        <br />

        <span class="taskcount"> <%=pendingTaskCount %> </span><a> Pendientes</a>

        <br />

        <span class="taskcount"><%=taskByReviewCount%> </span><a> Por calificar</a>
        
        <br />
        <span class="taskcount"><%=taskCompletedCount%> </span><a> Completas</a>
        


    </div>
    <div class="right">

        
        <div id="calendar"></div>

    </div>

    <script template="busyAgent" type="text/template">
        <a><img src="../App_Themes/Images/People/{Image}.png" width="16"/>{Name}</a>
    </script>
    <script template="freeAgent" type="text/template">
        <a><img src="../App_Themes/Images/People/{Image}.png" width="16"/>{Name}</a>
    </script>
    <script template="clientReview" type="text/template">
        <a><img src="../App_Themes/Images/People/{Image}.png" width="16"/>{Name}</a>
    </script>
</asp:Content>
