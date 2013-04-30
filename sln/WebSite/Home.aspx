<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebSite.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<%--Titulo--%>
    <h1>ManAgent Task Planner®</h1>

    <%--Galeria--%>
    <div class="gallery">
        <div class="principal_image">
            <img src="/App_Themes/images/Principal.png" />
        </div>
                       
    </div>

    <%--Informacion--%>
    <div class="information">
        
<p>Actualmente, existe una gran variedad de aplicaciones bajo la funcionalidad de planeación de tareas.</p>

<p>La mayoría de estos paquetes ofrecen grandes funcionalidades como asignación de tareas inteligente (carga sobre empleados, etc), gestión de grupos de trabajo, etc. Sin embargo una gran parte de estos están dirigidos a gestión de proyectos, y una minoría a gestión de tareas personales [1,2,3].</p>

<p>Podríamos afirmar a simple vista que no existe alguna aplicación de gestión de tareas que involucre al cliente del negocio. Varias compañías que ofrecen servicios (Internet, Televisión, Telefonía) aún se limitan a procesos físicos en lo referente a instalaciones y visitas técnicas.</p>

<p>Los agentes que realizan dichas visitas poseen órdenes de trabajo físicas en las cuales se mencionan los datos del cliente y del propósito de la visita, que el cliente mismo debe firmar como constancia al final de la misma.</p>

<p>Así mismo, la realimentación por parte del cliente sobre el servicio prestado se realiza a través de llamadas telefónicas al cliente, lo cual puede llegar a ser incómodo para el mismo. Por otro lado, puesto que la confirmación de orden de trabajo se realiza de forma física mediante un documento escrito, este puede ser alterado a fin de dar constancia de tareas que no se realizaron en su totalidad u no fueron del todo satisfactorias para el cliente.</p>

<p>Por ello surge ManAgent Task Planner®.</p>

<p>ManAgent Task Planner® es una aplicación para gestión de agentes en la cual un coordinador puede administrar un grupo de agentes a su disposición para realizar tareas (instalaciones/visitas técnicas) sobre clientes específicos.</p>
<p>Con ManAgent Task Planner® puede:</p>

<ul>
    <li>Optimizar los tiempos de atención y respuesta de los agentes de su compañía permitiendo administrar de manera eficiente los recursos a su cargo.</li>
    <li>Administrar la información de sus clientes de forma rápida  y sencilla con la ayuda del módulo  de clientes.</li>
    <li>Evitar gastos en infraestructura tecnológica gracias a su funcionamiento en la nube.</li>
</ul>

<p>Sin embargo, ManAgent Task Planner® se diferencia de las demás aplicaciones, puesto que:</p>

<ul>
    <li>Los clientes pueden confirmar la realización de una tarea mediante una interfaz sencilla y fácil de usar a través de una página web, además de calificarla mediante comentarios sobre la misma, evitando papeleos y llamadas telefónicas.</li>
</ul>



    <a href="index.aspx">Como nacio el proyecto?</a>


    <h3>Referencias</h3>
<p>1.	GanttProject, [En línea]. Available: http://www.ganttproject.biz/ </p>

<p>2.	TaskPlanner, [En línea]. Available: http://taskplanner.codeplex.com/ </p>

<p>3.	Todoist, [En línea]. Available: http://todoist.com/ </p>



    </div>
</asp:Content>
