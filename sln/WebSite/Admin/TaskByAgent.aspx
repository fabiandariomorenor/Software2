<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TaskByAgent.aspx.cs" Inherits="WebSite.Admin.TaskByAgent" %>
<%@ Register TagPrefix="uc" TagName="TaskByAgent" Src="~/Controls/Task/TaskByAgent.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Agent.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Css/TaskList.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc:TaskByAgent runat=server />

</asp:Content>
