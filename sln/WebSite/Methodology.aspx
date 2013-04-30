<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Methodology.aspx.cs" Inherits="WebSite.Methodology" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Metodología Scrum</h1>
    

<p>Para el desarrollo del proyecto, se escogió utilizar la metodología Scrum.</p>
<p>Los roles se dividieron de esta forma:</p>

<ul>
    <li><b>Product Owner:</b> Puesto que no existe un product owner en el proyecto, todos los miembros del equipo interpretaron este rol.</li>
    <li><b>Scrum Master:</b> Fabian Dario Moreno</li>
    <li>
        <b>Scrum Team: </b>
        <ul>
            <li>Juan Nicolas Camelo</li>
            <li>Fabian Dario Moreno</li>
            <li>Julian Felipe Cárdenas</li>
            <li>Giovanni Alexander Leon</li>
            <li>Jorge Andrés Serrano</li>
        </ul>
    </li>
    <li><b>Customers:</b> Al no existir un cliente para la aplicación, todos los miembros del equipo interpretaron este rol usando el producto y proveyendo realimentación del mismo.</li>
</ul>

<p>Una vez se establecieron los roles, se definió un marco de trabajo, especificando el tiempo disponible de cada miembro del equipo, la duración inicial de cada sprint y las especialidades u facultades de cada miembro.</p>
<p>Se determinó el desarrollo de reuniones luego de cada clase (Miercoles y Viernes) puesto que no fue posible propiciar otro espacio para juntar a todos los miembros del equipo. Así mismo se determinó una duración inicial de sprint de 2 semanas, considerando un sprint como una funcionalidad del producto con un conjunto de tareas asociadas a la misma.  </p>
<p>Así mismo, se determinaron las tareas iniciales básicas (desarrollo de la DB, entre otros) y se repartieron según las especialidades de cada miembro.</p>

<h3>Backlog</h3>

<p>Para realizar la documentación de backlogs, se utilizó la herramienta Team Foundation Server. Esta herramienta permite organizar y programar sprints, así como realizar el seguimiento de los mismos.</p>
<b>Product Backlog</b>
    <img src="App_Themes/Images/Fsf/ProductBacklog.PNG" width="665px" />
 
<b>Sprint Backlog</b>
    <img src="App_Themes/Images/Fsf/sprintIBoard.PNG"  width="665px" />
 
<b>Backlog Items</b>
 
 <img src="App_Themes/Images/Fsf/sprintIBacklogItems.PNG"  width="665px" />
 <br />
 <br />
 <img src="App_Themes/Images/Fsf/sprintIIBacklogItems.PNG"  width="665px"  />

<h3>Scrum Meetings</h3>

<p>Como se mencionó anteriormente, se desarrollaron reuniones al final de cada clase. Pese a que lo óptimo sería  desarrollar reuniones diarias también (daily meetings), por motivos de tiempo no fue posible.</p>
<p>Se utilizaron otros medios de comunicación como correo electrónico y Skype, para concertar reuniones con ciertos miembros del equipo. Pese a no ser lo especificado por la metodología, dadas las circunstancias es lo más cercano a un daily meeting.</p>

<h3>Sprints</h3>
<p>Pese a que las iteraciones se programaron con una duración inicial de 2 semanas, fueron necesarias revisiones semanales de las tareas implementadas hasta el momento, puesto que ciertos commits generaron cambios en el proyecto, los cuales pueden afectar las tareas ya desarrolladas. Así mismo fue necesario re-implementar la base de datos, a fin de estandarizar todo el código en ingles.</p>

<h3>Prácticas de desarrollo</h3>
<p>En el desarrollo del proyecto se han puesto en práctica los siguientes patrones SCM:</p>

<ul>
    <li>Mainline: El desarrollo del proyecto se ha realizado mediante una línea principal, sin necesidad de realizar branches. Pese a un problema con uno de los miembros del equipo en el repositorio, ha sido una práctica exitosa.</li>
    <li>Private Workspace: Cada miembro del equipo cuenta con su propio workspace, así como una copia del repositorio, permitiendo el trabajo independiente de cada uno.</li>
    <li>Repository: El proyecto está alojado en un repositorio (GitHub), el cual contiene el código fuente del proyecto, así como los archivos de configuración y scripts necesarios para configurar la base de datos.</li>
    <li>Task Level Commit: Cada cambio realizado en el proyecto corresponde bien a una tarea de una funcionalidad específica o a una corrección sobre alguna tarea ya existente.</li>
</ul>

<h3>Flujo de trabajo</h3>
<p>Para el desarrollo del proyecto se escogió el flujo de trabajo centralizado (Centralized Workflow), dado que tamaño del proyecto no justifica el uso de metodologías mas complejas como lo son el flujo de Gerente de Integración (Integration-Manager) o el flujo de Dictador - Teniente (Dictator- Lieutenants). Así mismo, dado que las iteraciones se dividen en funcionalidades las cuales así mismo se dividen en tareas puntuales, no es necesario crear repositorios remotos en los cuales cada desarrollador trabaje sobre las tareas que le fueron asignadas.</p>
<h3>Bibliografia</h3>

<ul>
    <li>Programando en .NET. Scrum con TFS [en línea]. 
< http://programandonet.com/web/scrum-con-tfs/></li>
    <li>Apuntes de clase “Ingenieria de Software 2”. Profesor Yury Niño Roa. Universidad Nacional de Colombia. Bogotá, I semestre – 2013.</li>
</ul>

</asp:Content>
