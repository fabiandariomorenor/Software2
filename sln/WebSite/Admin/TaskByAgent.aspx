<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TaskByAgent.aspx.cs" Inherits="WebSite.Admin.TaskByAgent" %>
<%@ Register TagPrefix="uc" TagName="TaskByAgent" Src="~/Controls/Task/TaskByAgent.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Informacion de la Tarea</h1>
    <uc:TaskByAgent runat=server />

</asp:Content>
