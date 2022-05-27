using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Nemiro;
using Nemiro.OAuth;
using Nemiro.OAuth.Clients;

namespace GoogleAuthentication
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if (Session["GoogleAuthResult"]!=null)
                {
                    lblMessage.Text = Session["GoogleAuthResult"].ToString();
                }
            }
        }

        //protected void btnGoogle_Click(object sender, EventArgs e)
        //{
        //    OAuthWeb.RedirectToAuthorization("Google", new Uri(Request.Url, "ExternalLoginCallback.aspx").AbsoluteUri);
        //}

        protected void btnGoogle_ServerClick(object sender, EventArgs e)
        {
            OAuthWeb.RedirectToAuthorization("Google", new Uri(Request.Url, "ExternalLoginCallback.aspx").AbsoluteUri);
        }
    }
}