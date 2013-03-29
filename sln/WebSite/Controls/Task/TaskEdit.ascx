<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskEdit.ascx.cs" Inherits="WebSite.Controls.Task.TaskEdit" %>

<div class="row">
    <span>Cliente:</span>
    <select>
        <asp:Repeater ID="rptClient" runat="server">
            <ItemTemplate>
                <option value="<%#DataBinder.Eval(Container.DataItem, "Document")%>"><%#DataBinder.Eval(Container.DataItem, "Name")%></option>
            </ItemTemplate>
        </asp:Repeater>
    </select>
</div>
<div class="row">
    <span>Cliente:</span>
    <textarea></textarea>
</div>

<div id="calendar"></div>

<div class="row">
    <span>Agente:</span>
    <select>
       
    </select>
</div>

<script>

    $(document).ready(function () {

        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();

        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'prev,next today',
                center: 'title'
            },
            allDaySlot: false,
            minTime: 7,
            maxTime:19,
            selectable: true,
            slotMinutes: 60,
            selectHelper: true,
            defaultView: 'agendaWeek',
            events: [

				{
				    title: 'Birthday Party',
				    start: new Date(y, m, d + 1, 19, 0),
				    end: new Date(y, m, d + 1, 22, 30),
				    allDay: false
				}
			],

            dayClick: function (date, allDay, jsEvent, view) {

                if (allDay) {
                    alert('Clicked on the entire day: ' + date);
                } else {
                    alert('Clicked on the slot: ' + date);
                }

                $(target).css("color","#000")
            }
        });

    });

</script>
