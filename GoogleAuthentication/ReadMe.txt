====Guide on setting up Google Authentication for your application using this configuration ====
NOTE: this guide is working for Google OAuth 2.0 only. as at 2022-05-27 for ASP.NET 4.8 and below.
************************************************************************************************
//STEP 1
//Setting up Google Authentication for your application using this configuration
1. Go to https://console.developers.google.com/
2. Create a new project
3. Go to APIs & auth -> Credentials
4. Create a new key
5. Go to "Create credentials" and select "OAuth client ID"
6. Select "Web application"
7. Enter the following information
	- Authorized redirect URIs:
		- https://<your-app-domain>/callback
	- Authorized Javascript origins:
		- https://<your-app-domain>
	- Authorized scopes:
		- https://www.googleapis.com/auth/userinfo.email
		- https://www.googleapis.com/auth/userinfo.profile
8. Click "Create"
9. Copy the client ID and client secret
10. Add the following to global.asax.cs file in Application_Start method after step 3 of STEP 2
	- GOOGLE_CLIENT_ID
	- GOOGLE_CLIENT_SECRET
11. Restart your server
************************************************************************************************
//STEP 2
//Setting up Authentication in app
1. downalod and install from nuget using Package Manager Console
	PM> Install-Package Nemiro.OAuth -Version 1.13.0
2. Open Global.asax.cs
3. Put below code in Application_Start method
		Nemiro.OAuth.OAuthManager.RegisterClient(
              new Nemiro.OAuth.Clients.GoogleClient(
                 "clientId-here",
                 "client-secret-here"
               ));
4. implement login with google onclick event with the redirectToAuthorization code
5. implement externalLoginCallback method after redirect from google login page
	
