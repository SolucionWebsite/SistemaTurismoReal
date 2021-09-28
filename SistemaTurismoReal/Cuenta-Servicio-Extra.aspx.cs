using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTurismoReal
{
    public partial class Cuenta_Servicio_Extra : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {

        }

        public void Btn_Mis_Datos_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Datos.aspx");
        }

        public void Btn_Mis_Reservas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Reservas.aspx");
        }

        public void Btn_Cambiar_Clave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cuenta-Clave.aspx");
        }

        public void Btn_Agregar_Click(object sender, EventArgs e)
        {
            if(Cmb_reserva.SelectedIndex == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Olvidar_Selecccionar_Reserva()", true);
            }
            else
            {
                Panel_Seleccionar_Servicio.Visible = true;
            }
        }

        public void Btn_Modificar_Click(object sender, EventArgs e)
        {
            if (Cmb_reserva.SelectedIndex == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Olvidar_Selecccionar_Reserva()", true);
            }
            else
            {
                if (Grid_Tour.SelectedRow == null || Grid_Transporte.SelectedRow == null)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Olvidar_Selecccionar_Servicio()", true);
                }
                else
                {
                    Panel_Seleccionar_Servicio.Visible = true;
                    Cmb_Servicio_Extra.Enabled = false;
                }
            }

            


            /*Habilitar secciones*/
            

            /*Cargar datos en los textbox y combobox desde BD*/
            /*Consultar si el tipo de servicio es igual a 1 o 2*/
            if (Cmb_Servicio_Extra.SelectedIndex == 1)
            {

            }
        }

        public void Cmb_Servicio_Extra_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (Cmb_Servicio_Extra.SelectedIndex == 1)
            {
                Panel_Tour.Visible = true;
                Panel_Transporte.Visible = false;

                if (Cmb_Servicio_Extra.Enabled == true)
                {
                    Panel_Btn_Contratar.Visible = true;
                }
            }
            else if (Cmb_Servicio_Extra.SelectedIndex == 2)
            {
                Panel_Transporte.Visible = true;
                Panel_Tour.Visible = false;

                if (Cmb_Servicio_Extra.Enabled == true)
                {
                    Panel_Btn_Contratar.Visible = true;
                }
            }
                
        }
    }
}