using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(HomeArchiveX.Web.Startup))]
namespace HomeArchiveX.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
