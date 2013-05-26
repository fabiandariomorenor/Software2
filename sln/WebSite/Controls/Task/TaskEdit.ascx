<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskEdit.ascx.cs" Inherits="WebSite.Controls.Task.TaskEdit" %>

<script>
    var clientId = <%=ClientId %>;
    var agentId = <%=AgentId %>;
    var taskId = <%=TaskId %>;
    var currentDate = new Date(<%=Date.Year %>,<%=Date.Month %>,<%=Date.Day %>,<%=Date.Hour +1 %>,0);
    var mode = "<%=Mode %>";
</script>

<script src="../../App_Themes/Js/Model/TaskModel.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/View/TaskView.js" type="text/javascript"></script>
<script src="../../App_Themes/Js/Controller/TaskController.js" type="text/javascript"></script>


<div class="data">

    <div class="row">
        <span>Direccion:</span>
        <input id="txtAddress" type="text" value="<%=Address %>"/>
    </div>

    <div class="row large">
        <span>Descripcion:</span>
        <textarea id="txtDescription"><%=Description %></textarea>
    </div>

    <div class="row">
        <span>Fecha y hora: </span> <span class="lblCurrentDate"><%=Date %></span>
    </div>
</div>
<div id="calendar"></div>

<div class="data">
    <div class="row">
        <span>Agente:</span>
        <select id="ddlAgent">
            <asp:Repeater ID="rptAgent" runat="server">
                <ItemTemplate>
                    <option value="<%#DataBinder.Eval(Container.DataItem, "Document")%>"><%#DataBinder.Eval(Container.DataItem, "Name")%></option>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    </div>

    <div class="row large hide">
        <span>Opinion del Cliente:</span>
        <a id="lblComment"></a>
    </div>

    <div class="data">
        <div class="row buttoms">
            <a id="lnkCancel" class="not_buttom">Cancelar</a>
            
            <asp:Panel ID="pnlSave" runat="server">
                <a id="lnkSave" class="buttom">Guardar</a>
            </asp:Panel>
        </div>
    </div>
    
</div>
