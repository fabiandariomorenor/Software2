<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Client.aspx.cs" Inherits="WebSite.Admin.Client" %>
<%@ Register TagPrefix="uc" TagName="ClientList" Src="~/Controls/Client/ClientList.ascx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Css/Client.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc:ClientList ID="AgentList1" runat=server />   
</asp:Content>
