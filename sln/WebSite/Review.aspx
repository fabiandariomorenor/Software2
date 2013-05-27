<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Review.aspx.cs" Inherits="WebSite.Review" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<link href="../App_Themes/Css/jquery.css" rel="stylesheet" type="text/css" />
<link href="App_Themes/Css/Review.css" rel="stylesheet" type="text/css" />
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
    
    <div class="review_content">
    
    <span class="lblMsgClientLogin">Por favor ingresa el número de tu documento y la fecha de expedición del mismo</span>
    <div class="client_login" >
    
    <span>Documento</span>
    <input id="txtDocumento" Integer="true" maxlength="10" type="text" />
    <br />
    <span>Fecha de Expedicion</span>
    <input id="txtDate" maxlength="20" type="text" />

    <a id="btnValidate" class="buttom">Validar</a>
    </div>

    
    <span id="lblMsgReview">Por favor califique el servicio prestado por nuestra compania</span><BR /><BR />

    <div id="rptTask"></div>
    <script template="rptTask" type="text/template">
        <div class="box task" Value="{ID}">
            <div class="number">{RowNumber}.</div>
            <div class="info">
                
                <span><b>Agente que atendio el requerimiento:</b><a>{AgentName}</a></span>
                <span><b>Direccion donde se presto el servicio:</b><a>{Address}</a></span>
                <span><p><b>Servicio Prestado: </b>{Description}</p></span>
                
                <span><b>como califica el servicio prestado?</b></span>

                <span>
                    <input name="rb{ID}" type="radio" value="Bueno" checked="yes"/>Bueno
                    <input name="rb{ID}" type="radio" value="Regular"/>Regular
                    <input name="rb{ID}" type="radio" value="Malo"/>Malo
                </span>
                <span>
                <a Value="{ID}" class="btnComment buttom">Enviar</a>
                </span>
            </div>
        </div>
    </script>
    <script empty="rptTask" type="text/template">
        <p class="center">No hay servicios por calificar</p>
    </script>

    </div>
</asp:Content>
