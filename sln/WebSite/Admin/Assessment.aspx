<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Assessment.aspx.cs" Inherits="WebSite.Admin.Assessment" %>
<%@ Register TagPrefix="uc" TagName="TaskAssessment" Src="~/Controls/Task/TaskAssessment.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="../App_Themes/Css/Assessment.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    <h1>Evaluacion de Actividades</h1>

    <p>Señor usuario lo invitamos a evaluar el desempeño de las actividades solucitadas</p>
    <uc:TaskAssessment runat="server" />
</asp:Content>
