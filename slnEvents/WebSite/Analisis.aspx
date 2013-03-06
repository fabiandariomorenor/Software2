<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Analisis.aspx.cs" Inherits="WebSite.Analisis" %>
<%@ Register TagPrefix="uc" TagName="Header" Src="Controls/Header.ascx" %>
<%@ Register TagPrefix="uc" TagName="Footer" Src="Controls/Footer.ascx" %>
<%@ Register TagPrefix="uc" TagName="Developers" Src="Controls/Developers.ascx" %>
<%@ Register TagPrefix="uc" TagName="Activity" Src="Controls/Activity.ascx" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="/App_Themes/css/General.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Header.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Footer.css" rel="stylesheet" type="text/css" />
    <link href="/App_Themes/css/Index.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="page">
            
            <%--Header--%>
            <uc:Header ID="Header1" runat=server />

            <%--Content--%>
            <div class="content">
                <%--Columna Izquierda--%>
                <div class="left_column">
                    
                    <%--Titulo--%>
                    <h1></h1>

                    <%--Galeria--%>
                    <div class="gallery">
                        <div class="principal_image">
                            <img src="/App_Themes/images/Principal.jpg" />
                        </div>
                       
                    </div>

                </div>

                <%--Columna Derecha--%>
                <div class="right_column">
                    
                    <%--Desarrolladores--%>
                    <div class="box">
                        <div class="title">Equipo de Trabajo</div>
                        <%--Developers--%>
                        <uc:Developers ID="Developers1" runat=server />
                    </div>

                    <%--Actividades--%>
                    <div class="box">
                        <div class="title">Actividades</div>
                        <%--Developers--%>
                        <uc:Activity ID="Activity1" runat=server />
                    </div>


                </div>
            </div>

            <%--Footer--%>
            <uc:Footer ID="Footer1" runat=server />
        </div>
    </form>
</body>
</html>