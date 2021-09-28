using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTurismoReal
{
    public partial class Cuenta_Clave : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {

        }

        public void Btn_Mis_Reservas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Reservas.aspx");
        }

        public void Btn_Cambiar_Clave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Clave.aspx");
        }

        public void Btn_Mis_Datos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Datos.aspx");
        }

        public void Btn_Servicio_Extra_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Servicio-Extra.aspx");
        }
    }
}