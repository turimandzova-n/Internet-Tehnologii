using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Auditoriska_8.Startup))]
namespace Auditoriska_8
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
