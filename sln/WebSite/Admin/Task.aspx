<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Task.aspx.cs" Inherits="WebSite.Admin.Task" %>
<%@ Register TagPrefix="uc" TagName="TaskEdit" Src="~/Controls/Task/TaskEdit.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Schedule.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Css/Task.css" rel="stylesheet" type="text/css" />
    <script src="../App_Themes/Js/Library/jQuery.UI.js" type="text/javascript"></script>
    <script src="../App_Themes/Js/Library/schedule.js" type="text/javascript"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Informacion de la Tarea</h1>
    <uc:TaskEdit runat=server />

</asp:Content>
