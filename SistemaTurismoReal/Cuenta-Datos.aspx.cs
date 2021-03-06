using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTurismoReal
{
    public partial class MiCuenta : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            
        }

        public void Btn_Editar_Click(object sender, EventArgs e)
        {
            Txt_Nombre.Enabled = true;
            Txt_Apellido_P.Enabled = true;
            Txt_Apellido_M.Enabled = true;
            Txt_Correo.Enabled = true;
            Txt_Fecha_Nacimiento.Enabled = true;
            Cmb_Genero.Enabled = true;
            Cmb_Nacionalidad.Enabled = true;
            Txt_Rut.Enabled = true;
            Txt_Telefono.Enabled = true;
        }

        public void Btn_Mis_Reservas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Reservas.aspx");
        }

        public void Btn_Servicio_Extra_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Servicio-Extra.aspx");
        }

        public void Btn_Cambiar_Clave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Clave.aspx");
        }

        
    }
}