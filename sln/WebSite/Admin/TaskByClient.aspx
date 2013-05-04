<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="TaskByClient.aspx.cs" Inherits="WebSite.Admin.TaskByClient" %>
<%@ Register TagPrefix="uc" TagName="TaskByClient" Src="~/Controls/Task/TaskByClient.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Client.css" rel="stylesheet" type="text/css" />
    <link href="../App_Themes/Css/TaskList.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <uc:TaskByClient ID="TaskByClient1" runat=server />   

</asp:Content>
