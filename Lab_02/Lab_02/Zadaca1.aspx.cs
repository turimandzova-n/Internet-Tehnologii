using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_02
{
    public partial class Zadaca1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 1; i < 32; i++)
            {
                ddlDen.Items.Add(Convert.ToString(i));
            }
            String[] meseci = { "Јануар", "Фебруар", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември" };
            for (int j = 0; j < meseci.Length; j++) {
                ddlMesec.Items.Add(meseci[j]); 
            }
            String[] vreme = { "00:00", "01:00", "02:00", "03:00", "04:00", "05:00", "06:00", "07:00", "08:00", "09:00", "10:00", 
             "11:00","12:00", "13:00", "14:00", "15:00", "16:00", "17:00", "18:00", "19:00", "20:00", "21:00", "22:00", "23:00",};
            for (int k = 0; k < vreme.Length; k++) {
                ddlVreme.Items.Add(vreme[k]);
            }

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = txtIme.Text + txtPrezime.Text;
            lblSredtsvo.Text = lstSredstvo.SelectedItem.Text;
            lblOd.Text = ddlOd.SelectedValue;
            lblDo.Text = ddlDo.SelectedValue;
            lblVreme.Text = ddlVreme.SelectedValue;
            lblZona.Text = rblZona.SelectedItem.Text;
            lblKlasa.Text = rblKlasa.SelectedItem.Text;
            lblPosluga.Text = cblPoslugaa.SelectedItem.Text;
            if (lstSredstvo.SelectedIndex == 0)
            {
                avion.Visible = true;
            }
            else {
                voz.Visible = true;
            }
            pnlPanela1.Visible = true;
            lblPoraka.Text = "Ви благодариме на довербата и ви посакуваме среќен пат!";

        }
    }
}