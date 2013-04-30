<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Technologies.aspx.cs" Inherits="WebSite.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="App_Themes/Css/About.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            text-align: justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Full Stack Framework</h1>
<h3>.NET Framework 4</h3>
<p class="style1">
    Para el desarrollo del proyecto de ingeniería de Software 2, se definió utilizar 
    .NET Framework (versión 4) para el desarrollo Web, con el Entorno de Desarrollo 
    Integrado IDE Visual Studio 2010, y el motor de base de Datos de SQLServer 2008 R2.
</p>
<h3>Introducción</h3>
<p class="style1">

La tecnología .Net de Microsoft, es el modelo de desarrollo que hace al software independiente de la plataforma y de los dispositivos en el acceso web. El modelo de desarrollo .NET está compuesto por las tecnologías .NET Framework, 
    el Windows Server System, los servicios web XML ( sevicios building block) y Visual Studio .NET. El .NET Framework es la infraestructura básica de .NET, que tiene como objetivo simplificar el desarrollo Web,  proporcionando el marco en tiempo de compilación y en tiempo de ejecución necesario para generar y ejecutar aplicaciones basadas en 
.NET </p>
<div class="center">
        <img  src="../App_Themes/Images/Fsf/net1.png" style="text-align: center" />
    </div>

<h3>.NET Framework</h3>

<p class="style1">
El Framework de desarrollo<strong> .NET Framework</strong> es la base principal sobre el que se desarrollan y ejecutan las aplicaciones y los servicios Web XML. El Framework .NET esta constituido por una biblioteca de clases que proporciona código reutilizable para las tareas más comunes (incluyendo el acceso a datos, el desarrollo de servicios Web XML, Formularios Web (Web Forms) y formularios windows de escritorio (Windows Forms) ), y la máquina virtual CLR. Los programas escritos en el Framework. NET se ejecutan en un entorno  de software: el Common Language Runtime (CLR), 
    la cual es una máquina de aplicación virtual que ofrece servicios de seguridad, gestión de memoria , y&nbsp; manejo de excepciones, proporcionando las funcionalidades necesarias para simplificar el desarrollo. El CLR gestiona los servicios en tiempo de ejecución, e integra diferentes lenguajes de programación soportados. Además,  controla gran parte de la infraestructura de la aplicación, de modo que los desarrolladores pueden concentrarse en la lógica de negocio específica de la aplicación. 

Por otra parte, los Servicios Web XML utilizan XML para enviar datos, garantizando así que cualquier cliente con capacidad XML puede recibir esos datos. Como XML es un estándar abierto, la mayoría de clientes modernos, como los sistemas operativos de PCs, teléfonos móviles, asistentes digitales personales (PDAs) y tablets, pueden aceptar datos XML. 

</p>
    <p class="style1">
        .</p>
    <p class="style1">
        Es decir, el objetivo de la plataforma .NET es simplificar el desarrollo de 
        aplicaciones Web, integrando las herramientas y tecnologías para el desarrolo&nbsp; de software como servicio 
        e&nbsp; integrar&nbsp; estos servicios para 
        su acceso mediante cualquier dispositivo en Internet.</p>


 <h3>ASP.NET</h3>
 <p class="style1">
.NET Framework esta conformado por varios componentes, entre los cuales se destaca  ASP.NET, el cual es un marco de programación creado sobre el CLR, que desarrolla páginas web dinámicas que pueden acceder a recursos del servidor, procesar formularios (Web Forms) del lado del servidor y&nbsp; crear aplicaciones Web distribuidas mediante los Servicios Web Xml. 
     En ASP.NET el componente <strong>Web Form</strong> proporciona una forma fácil y 
     eficiente de desarrollar interfaces de usuario y Webs dinámicos.&nbsp;&nbsp; Una aplicación Web ASP.NET consta de uno o más formularios Web Form. Un Web Form es una página dinámica que  puede acceder a recursos del servidor, como ejecutar código en el lado servidor para acceder a una base de datos, generar formularios Web Forms adicionales, o 
     utilizar la seguridad interna del servidor. Que por su independencia de la utilización de scripts, puede ser visualizado prácticamente en todos los dispositivos que dispongan de acceso a Internet y de un navegador Web .
</p>

&nbsp;<h3>Ventajas de Desarrollo con  .NET Framework</h3>
<p class="style1">
    La implementación del Framework esta basada en estándares y practicas Web, 
    soportando completamente las tecnologías actuales de Internet, cómo HTML 
    (Hypertext Markup Language), HTTP, XML, SOAP (Simple Object Access Protocol), 
    entre otros estándares Web. Las funcionalidades del Framework son independientes 
    del lenguaje compatible con el modelo .NET. Es decir, que permite la 
    integración, migración y reutilización de código entre las aplicaciones web, 
    aplicaciones Windows y los servicios Web XML.&nbsp; Además, es la tecnología 
    utilizada por Microsoft para el desarrollodo de aplicaciones Windows, 
    garantizando completamente el soporte técnologico.</p>

    <h3>Motor de Base de Datos SQLServer 2008 R2</h3>

<p class="style1">
    Se utilizara&nbsp; el servicio de Motor de base de datos de Microsoft&nbsp;SQL Server 
    2008 R2&nbsp; para almacenar y procesar datos en tablas relacionales o 
    como documentos XML, específicamente con el&nbsp;<strong> SQL Server Management Studio</strong> para 
    administrar los objetos de bases de datos.

</p>
<p class="style1">
    El Motor de base de datos es el servicio principal para almacenar, procesar y 
    proteger datos. El Motor de base de datos permite el acceso controlado y&nbsp; 
    el procesamiento de transacciones&nbsp; para la administración de operaciones CRUD 
    en las bases de datos relacionales.
    Permitiendo crear y administrar bases de datos relacionales 
    para el procesamiento de transacciones o de datos, con la creación de 
    tablas para almacenar datos y&nbsp; de objetos de base de datos (busquedas , vistas y 
    procedimientos almacenados) para ver, administrar y guardar datos.</p>
<p class="style1">
&nbsp;&nbsp;</p>
    <h3>Referencias</h3>
    <br />
    <li><a bi:index="0" bi:type="secondarycta" class="hpFeat_Link Arrow" 
            href="http://www.microsoft.com/downloads/info.aspx?na=40&amp;p=3&amp;SrcDisplayLang=en&amp;SrcCategoryId=&amp;SrcFamilyId=0856eacb-4362-4b0d-8edd-aab15c5e04f5&amp;u=http://go.microsoft.com/fwlink/?LinkId=53646">
        <span class="hpFeat_Text">Centro para desarrolladores de .NET Framework</span><span 
            class="hpFeat_Arrow">›</span></a>&nbsp;&nbsp; :&nbsp;
        <a href="http://msdn.microsoft.com/en-US/vstudio/aa496123">
        http://msdn.microsoft.com/en-US/vstudio/aa496123</a></li>
    <li><a bi:index="1" bi:type="secondarycta" class="hpFeat_Link Arrow" 
            href="http://go.microsoft.com/fwlink/?LinkID=186913">
        <span class="hpFeat_Text">.NET Framework 4 Site</span><span 
            class="hpFeat_Arrow"></span></a>&nbsp; :&nbsp;
        <a href="http://www.microsoft.com/es-es/download/details.aspx?id=17851">
        http://www.microsoft.com/es-es/download/details.aspx?id=17851</a></li>
    <li><a bi:index="0" bi:type="secondarycta" class="hpFeat_Link Arrow" 
            href="http://www.microsoft.com/visualstudio/products/2010/default.mspx">
        <span class="hpFeat_Text">Visual Studio 2010 Site</span></a> :
        <a href="http://www.microsoft.com/visualstudio/eng/products/visual-studio-overview">
        http://www.microsoft.com/visualstudio/eng/products/visual-studio-overview</a></li>
    <li><a href="http://es.wikipedia.org/wiki/.NET">Wikipedia : 
        http://es.wikipedia.org/wiki/.NET</a></li>
    <li><a href="http://www.microsoft.com/spain/sql/default.mspx">SQL Server Site&nbsp; 
        :&nbsp; http://www.microsoft.com/spain/sql/default.mspx</a></li>
    <li><a href="http://msdn.microsoft.com/library/hh995350(v=sql.15).aspx">SQL Server 
        Release Notes&nbsp; 
        http://msdn.microsoft.com/library/hh995350%28v=sql.15%29.aspx</a></li>
    <li><a href="https://es.wikipedia.org/wiki/Microsoft_SQL_Server">Wikipedia : 
        https://es.wikipedia.org/wiki/Microsoft_SQL_Server</a></li>
    <li><a href="http://pis.unicauca.edu.co/moodle-2.1.2/pluginfile.php/18890/mod_resource/content/0/Material_PDF/1.-_Introduccion_a_ASP.NET.pdf">
        Introducción a&nbsp; ASP. NET : 
        http://pis.unicauca.edu.co/moodle-2.1.2/pluginfile.php/18890/mod_resource/content/0/Material_PDF/1.-_Introduccion_a_ASP.NET.pdf</a></li>
    <p class="style1">
        &nbsp;</p>
</asp:Content>
