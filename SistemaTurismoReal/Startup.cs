using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SistemaTurismoReal.Startup))]
namespace SistemaTurismoReal
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
