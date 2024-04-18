using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_02
{
    public partial class Zadaca_2b : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32(dejnost.Text) > 5)
            {
                Label1.Text = "Секоја чест!";
            }
            else
                Label1.Text = finkiid.Text + "@finki.ukim.mk";
        }
    }
}