using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace GoogleAuthentication
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            Nemiro.OAuth.OAuthManager.RegisterClient(
              new Nemiro.OAuth.Clients.GoogleClient(
                 "181689457232-0v761jklhkigqk1q6jp1ugrunf96rjn5.apps.googleusercontent.com",
                 "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"
               ));
        }
    }
}