<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskAssessment.ascx.cs" Inherits="WebSite.Controls.Task.TaskAssessment" %>

<div class="task">   
    <h2>Tarea 1</h2>
    <p>Instalacion de television digital</p>
    
    <div class="row">
        <span>Estado</span> 
        <select id="Select1">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <option value="<%#DataBinder.Eval(Container.DataItem, "Document")%>"><%#DataBinder.Eval(Container.DataItem, "Name")%></option>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    </div>

    <div class="row large">
        <span>Comentario</span>
        <textarea id="Textarea1"></textarea>
    </div>

    <div class="row">
        <a class="buttom">Enviar</a>
    </div>
</div>

<div class="task">   
    <h2>Tarea 1</h2>
    <p>Instalacion de television digital</p>
    
    <div class="row">
        <span>Estado</span> 
        <select id="Select2">
            <asp:Repeater ID="Repeater2" runat="server">
                <ItemTemplate>
                    <option value="<%#DataBinder.Eval(Container.DataItem, "Document")%>"><%#DataBinder.Eval(Container.DataItem, "Name")%></option>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    </div>

    <div class="row large">
        <span>Comentario</span>
        <textarea id="Textarea2"></textarea>
    </div>

    <div class="row">
        <a class="buttom">Enviar</a>
    </div>
</div>

<div class="task">   
    <h2>Tarea 1</h2>
    <p>Instalacion de television digital</p>
    
    <div class="row">
        <span>Estado</span> 
        <select id="Select3">
            <asp:Repeater ID="Repeater3" runat="server">
                <ItemTemplate>
                    <option value="<%#DataBinder.Eval(Container.DataItem, "Document")%>"><%#DataBinder.Eval(Container.DataItem, "Name")%></option>
                </ItemTemplate>
            </asp:Repeater>
        </select>
    </div>

    <div class="row large">
        <span>Comentario</span>
        <textarea id="Textarea3"></textarea>
    </div>

    <div class="row">
        <a class="buttom">Enviar</a>
    </div>
</div>