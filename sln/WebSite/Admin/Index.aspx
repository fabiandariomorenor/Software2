<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebSite.Admin.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Admin.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Css/Schedule.css" rel="stylesheet" type="text/css" />
    <script src="../App_Themes/Js/Library/schedule.js" type="text/javascript"></script>

    <script src="../App_Themes/Js/View/AdminView.js" type="text/javascript"></script>
    <script src="../App_Themes/Js/Controller/AdminController.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="left">
        <a class="title" href="agent.aspx">Agentes (1)</a> 

        <span>Libres : </span><a><img src="../App_Themes/Images/People/6.png" width="16"/>Pedro Alvarez</a>
        <a><img src="../App_Themes/Images/People/6.png" width="16"/>Fabian Perez</a>
        <a><img src="../App_Themes/Images/People/6.png" width="16"/>Juan Gonzales</a>
        <a><img src="../App_Themes/Images/People/6.png" width="16"/>Lucas Marcelo</a><a>Pedro Alvarez</a>
        
        <div class="br"></div>
        <span>Ocupados : </span><a>Pedro Alvarez</a><a>Fabian Perez</a><a>Juan Gonzales</a><a>Lucas Marcelo</a><a>Pedro Alvarez</a>

        <a class="title" href="client.aspx">Clientes (5)</a>
        
        <span>Por calificar : </span><span></span><a>Pedro Alvarez</a><a>Fabian Perez</a><a>Juan Gonzales</a><a>Lucas Marcelo</a><a>Pedro Alvarez</a>

        <a class="title" >Tareas (2)</a>

        <span> </span><a> En ejecucion</a>

        <br />

        <span> </span><a> Pendientes</a>

        <br />

        <span> </span><a> Por calificar</a>


    </div>
    <div class="right">

        
        <div id="calendar"></div>

    </div>


</asp:Content>
