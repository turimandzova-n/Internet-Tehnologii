using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Auditorsika1
{
    public partial class Osma : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            boja.Items.Add(new ListItem("Green"));
            boja.Items.Add(new ListItem("Red"));
            boja.Items.Add(new ListItem("Yellow"));

            Font.Items.Add(new ListItem("Ariel"));
            Font.Items.Add(new ListItem("Times New Roman"));

            FontColor.Items.Add(new ListItem("Green"));
            FontColor.Items.Add(new ListItem("Green"));
            FontColor.Items.Add(new ListItem("Green"));

            BorderType.Items.Add(new ListItem(BorderStyle.None.ToString(), ((int)BorderStyle.None).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Solid.ToString(), ((int)BorderStyle.Solid).ToString()));
            BorderType.Items.Add(new ListItem(BorderStyle.Groove.ToString(), ((int)BorderStyle.Groove).ToString()));
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            Poraka.Text = ShortText.Text;
            Poraka.Font.Name = Font.SelectedItem.Text;
            int size;
            var success = Int32.TryParse(FontSize.Text, out size);
            if (success)
            {
                Poraka.Font.Size = size;
            }
            if (ShowImg.Checked) {
                Slika.Visible = true;
            }
            Cestitka.BackColor = Color.FromName(boja.SelectedItem.Text);
            
        }
    }
}