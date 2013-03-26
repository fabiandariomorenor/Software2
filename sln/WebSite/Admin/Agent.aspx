<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Agent.aspx.cs" Inherits="WebSite.Admin.Agent" %>
<%@ Register TagPrefix="uc" TagName="AgentList" Src="~/Controls/Agent/AgentList.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Agent.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:AgentList runat=server />
</asp:Content>
