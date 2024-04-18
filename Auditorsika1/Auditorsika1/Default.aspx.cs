using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Auditorsika1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void PrikaziGrad_Click(object sender, EventArgs e)
        {
            ListItemCollection items = ListaGradovi.Items;

            foreach (ListItem item in items) {
                if (item.Selected) {
                    SelektiranGrad.Text += "<br/>" + item.Text;
                    Oddalecenost.Text += "<br/>" + item.Value;
                }
            }
        }
    }
}