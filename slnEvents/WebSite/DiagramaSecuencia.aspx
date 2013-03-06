<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Main.Master"  CodeBehind="DiagramaSecuencia.aspx.cs" Inherits="WebSite.DiagramaSecuencia" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <%--Titulo--%>
    <h1>Diagrama de Secuencia</h1>

    <%--Galeria--%>
    <div class="gallery">
       <div class="principal_image">
            <a href="/App_Themes/Images/Analysis/Secuencia.png" alt="Click para ampliar"><img src="/App_Themes/Images/Analysis/Secuencia.png" width="665px" /></a>
        </div>              
    </div>
    <p>Por favor de click sobre la imagen para descargar</p>
</asp:Content>
