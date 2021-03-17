using System;
using System.Web.Security;

namespace AmbarV2.ClimaYLiderazgo
{
    public partial class ClimaYLiderazgo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.User.Identity.IsAuthenticated)
            {
                FormsAuthentication.RedirectToLoginPage();
            }
            else
            {
                if ((string)Session["Nombres"] == "" || (string)Session["Nombres"] == null)
                {
                    FormsAuthentication.RedirectToLoginPage();
                }
                //Obtener();
            }
        }
    }
}