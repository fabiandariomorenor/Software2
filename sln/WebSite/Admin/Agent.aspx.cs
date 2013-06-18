using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;

namespace WebSite.Admin
{
    public partial class Agent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var rol = (Entity.RolEnum)Session["RolId"];
            Security.Validate(Entity.PageEnum.Agent, rol);
        }
    }
}