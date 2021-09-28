using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SistemaTurismoReal.BLL;

namespace SistemaTurismoReal
{
    public partial class Registro : System.Web.UI.Page
    {
        ClienteBLL localidad = new ClienteBLL();

        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarNacionalidad();
            }
        }

        public void CargarNacionalidad()
        {
            CmbNacionalidad.DataSource = localidad.Nacionalidad();
            CmbNacionalidad.DataMember = "datos";
            CmbNacionalidad.DataTextField = "DESC_NACIONALIDAD";
            CmbNacionalidad.DataValueField = "ID_NACIONALIDAD";
            CmbNacionalidad.DataBind();
            CmbNacionalidad.Items.Insert(0, new ListItem("Seleccionar", "0"));

        }
    }
}