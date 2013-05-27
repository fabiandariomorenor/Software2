<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="WebSite.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="../App_Themes/Css/jquery.css" rel="stylesheet" type="text/css" />
<script src="../App_Themes/Js/Library/jQuery.UI.js" type="text/javascript"></script>
<script src="App_Themes/Js/Util/Template.js" type="text/javascript"></script>
    
<script src="App_Themes/Js/Model/TaskModel.js" type="text/javascript"></script>
<script src="App_Themes/Js/View/TaskReviewView.js" type="text/javascript"></script>
<script src="App_Themes/Js/Controller/TaskReviewController.js" type="text/javascript"></script>

<script>
    var clientId = 0;
</script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Califica el Servicio</h1>
    
    Por favor ingresa el número de tu documento y la fecha de expedición del mismo

    <div class="client_login" >
    <span>Documento</span>
    <input id="txtDocumento" Integer="true" maxlength="10" type="text" />
    <br />
    <span>Fecha de Expedicion</span>
    <input id="txtDate" maxlength="20" type="text" />

    <a id="btnValidate" class="buttom">Validar</a>
    </div>

    <div id="rptTask"></div>
    <script template="rptTask" type="text/template">
        <div class="box">
            
            <div class="info">
                
                <span>Client:<a>{ClientName}</a></span>
                <span>Direccion:<a>{Address}</a></span>
                <span>Estado:<a>{StateName}</a></span>
                <span><p>{Description}</p></span>
               
                <a class="stop" title="Completar" value="{ID}">
                    <img alt="Completar" src="../../App_Themes/Images/stop.png" />
                </a>
                 
                 
                <a class="play" title="Play" value="{ID}" >
                    <img alt="Play" src="../../App_Themes/Images/play1.png" />
                </a>
                

                <a class="delete" title="Eliminar" value="{ID}">
                    <img alt="Eliminar" src="../../App_Themes/Images/Icon/delete.png" />
                </a>
                <a class="edit" title="Editar" value="{ID}">
                    <img src="../../App_Themes/Images/Icon/edit.png" />
                </a>
            </div>
        </div>
    </script>
    <script empty="rptTask" type="text/template">
        <p class="center">No se encontraron tareas</p>
    </script>


</asp:Content>
