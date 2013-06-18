using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BO;
using Entity;

namespace WebSite.Controls
{
    public partial class PrivateHeader : System.Web.UI.UserControl
    {
        string sessionName = "Document";

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //si esta loggeado
                if (Session[sessionName] != null)
                {
                    int id = int.Parse(Session[sessionName].ToString());
                    UserBO userBO = new UserBO();
                    User user = userBO.Get(id);

                    ltName.Text = "Bienvenido: "+user.Name;
                    ltName.Visible = true;
                    pnlLogin.Visible = false;
                }
                else {
                    ltName.Visible = false;
                    pnlLogin.Visible = true;
                }
            }
            catch { }
        }

        protected void lnkClose_Click(object sender, EventArgs e)
        {
            Session[sessionName] = null;
            Response.Redirect("/home.aspx", true);
        }
    }
}