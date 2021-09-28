using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTurismoReal
{
    public partial class Cuenta_Modificar_Reserva : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
        }

        public void Cmb_Opciones_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Cmb_Opciones.SelectedIndex == 1)
            {
                Panel_Acompañantes.Visible = true;
                Panel_Guardar.Visible = true;
                Panel_Departamento.Visible = false;
                Panel_Fecha.Visible = false;
            }
            else if (Cmb_Opciones.SelectedIndex == 2)
            {
                Panel_Acompañantes.Visible = false;
                Panel_Agregar_Acompañante.Visible = false;
                Panel_Departamento.Visible = false;
                Panel_Fecha.Visible = true;
                Panel_Guardar.Visible = true;
            }
            else if (Cmb_Opciones.SelectedIndex == 3)
            {
                Panel_Acompañantes.Visible = false;
                Panel_Agregar_Acompañante.Visible = false;
                Panel_Fecha.Visible = false;
                Panel_Departamento.Visible = true;
                Panel_Guardar.Visible = true;
            }
        }

        public void Btn_Añadir_Click(object sender, EventArgs e)
        {
            Panel_Agregar_Acompañante.Visible = true;
            Panel_Guardar.Visible = true;
            Panel_Container.Height = 1050;
        }

        public void Btn_Mis_Datos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Datos.aspx");
        }

        public void Btn_Cambiar_Clave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Clave.aspx");
        }

        public void Btn_Servicio_Extra_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Servicio-Extra.aspx");
        }
    }
}