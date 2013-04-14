<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master" CodeBehind="Index.aspx.cs" Inherits="WebSite.Index1" %>

    

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--Titulo--%>
    <h1>Administración de Agentes</h1>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <img src="/App_Themes/images/Principal.png" />
        </div>
                       
    </div>

    <%--Informacion--%>
    <div class="information">
        <h2>DESCRIPCIÓN DEL PROYECTO</h2>
<p>El área de soporte técnico de una compañía se encarga de realizar la instalación de decodificadores de televisión digital. </p>
<p>A cargo del área está un coordinador, él cual tiene a su cargo 30 agentes y desea administrarlos de manera eficiente.  </p>
<p>Un agente es el empleado encargado de realizar la instalación de los decodificadores en donde lo solicite el cliente.</p>
<p>El coordinador tiene como función crear, editar, eliminar y consultar las tareas, así como también asignarlas a cada uno de los agentes, en el momento de asignar una tarea el sistema notificara si el agente esta disponible.</p>

<p>Un agente tiene como responsabilidad llevar a cabo las tareas asignadas, marcándolas como “en progreso” una vez inicie la instalación y márcalas como “completada” una vez finalice.</p>
<p>Cuando un coordinador crea una tarea de instalación debe completar  un formulario con los siguientes datos: nombre del cliente, cedula, dirección, teléfono, número de decodificadores, fecha  y observaciones. Las tareas nuevas quedan por defecto con estado “pendiente”.</p>
<p>La aplicación debe proporcionar una interfaz a los clientes en donde ellos podrán notificar si la instalación se llevo de manera satisfactoria y adicionalmente calificar el servicio, esta información estará disponible únicamente para el administrador.</p>
                        
<h2>OBJETIVO GENERAL </h2>
Desarrollar un sistema de información que permita administrar las tareas y los agentes del área de soporte técnico de la compañía. 

<h2>OBJETIVOS ESPECÍFICOS</h2>
<p>
    Desarrollar un sistema de información que permita:
    <ul>
    <li>Crear una tarea</li>
    <li>Cambiar la información de una tarea</li>
    <li>Buscar  las tareas </li>
    <li>Eliminar las tareas</li>
    <li>Autenticar un usuario</li>
    <li>Crear un agente</li>
    <li>Editar un agente</li>
    <li>Eliminar un agente</li>
    <li>Buscar un agente</li>
    <li>Autenticar a un cliente</li>
    <li>Calificar el servicio</li>
    </ul>
</p>
    </div>
</asp:Content>
