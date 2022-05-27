using Nemiro.OAuth;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GoogleAuthentication
{
    public partial class ExternalLoginCallback : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var result = OAuthWeb.VerifyAuthorization(); 
                if (result.IsSuccessfully)//check result of authorization
                {
                    var user = result.UserInfo;
                    lblMessage.Text=String.Format("User ID:  {0}<br />", user.UserId);
                    lblMessage.Text += String.Format("Name:     {0}<br />", user.DisplayName);
                    lblMessage.Text += String.Format("Email:    {0}<br />", user.Email);
                    lblMessage.ForeColor = System.Drawing.Color.Black;

                    //write your other code logic here
                    //insert user data to database or other storage. insert if not exist is advised to avoid duplicates
                    //create user session
                    //redirect to your site
                }
                else
                {
                    Session["GoogleAuthResult"] = "Login with google failed. Please try again.";
                    Response.Redirect("~/Login.aspx");
                }
            }
        }
    }
}