using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SistemaTurismoReal
{
    public partial class Reservar : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            string url = HttpContext.Current.Request.Url.AbsoluteUri;
            string[] separado = url.Split('/');
            string restante = separado[separado.Length - 1];
            string abono = separado[separado.Length - 2];
            string total = separado[separado.Length - 3];
            string acompañantes = separado[separado.Length - 4];
            string fecha_vuelta = separado[separado.Length - 5];
            string fecha_ida = separado[separado.Length - 6];
            string dias = separado[separado.Length - 7];
            string comuna = separado[separado.Length - 8];
            string provincia = separado[separado.Length - 9];
            string region = separado[separado.Length - 10];
            string direccion = separado[separado.Length - 11];

            string restanteDecode = Base64Decode(restante);
            string abonoDecode = Base64Decode(abono);
            string totalDecode = Base64Decode(total);
            string acompañantesDecode = Base64Decode(acompañantes);
            string fecha_vueltaDecode = Base64Decode(fecha_vuelta);
            string fecha_idaDecode = Base64Decode(fecha_ida);
            string diasDecode = Base64Decode(dias);
            string comunaDecode = Base64Decode(comuna);
            string provinciaDecode = Base64Decode(provincia);
            string regionDecode = Base64Decode(region);
            string direccionDecode = Base64Decode(direccion);

            Lbl_Depto.Text = direccionDecode;
            Lbl_Region.Text = regionDecode;
            Lbl_Provincia.Text = provinciaDecode;
            Lbl_Comuna.Text = comunaDecode;
            Lbl_Dias.Text = diasDecode;
            Lbl_Ida.Text = fecha_idaDecode;
            Lbl_Vuelta.Text = fecha_vueltaDecode;
            Lbl_Acompañantes.Text = acompañantesDecode;
            Lbl_Total.Text = totalDecode;
            Lbl_Abono.Text = abonoDecode;
            Lbl_Restante.Text = restanteDecode;
        
        }

        public static string Base64Decode(string base64EncodedData)
        {
            string textoDecodeFinal = base64EncodedData.ToString().Replace("_", "/");
            var base64EncodedBytes = System.Convert.FromBase64String(textoDecodeFinal);
            string textoDecode = System.Text.Encoding.UTF8.GetString(base64EncodedBytes);

            return textoDecode;
        }

        public void BtnPagar_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "Pagar()", true);
        }
    }
}