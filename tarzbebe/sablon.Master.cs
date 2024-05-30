using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace master
{
    public partial class sablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            



            //-------
            if (Session["uyeposta"] == null)
            {
                kull.InnerHtml = "Merhaba Ziyaretçi";
                cikis.Visible = false;
                giris.Visible = true;

            }

            else
            {
                cikis.Visible = true;
                giris.Visible = false;
                kull.InnerHtml = "Merhaba " + Session["uyeposta"];
            }

            if (Session["admin"] != null)
            {
                cikis.Visible = true;
                giris.Visible = false;
                kull.InnerHtml = "Merhaba Admin" + " " + Session["admin"];
                
            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (ara.Text == "")
            {
                hata.Text = "Boş Arama Yapılamaz";
                
            }

            else
            {
                Response.Redirect("ara.aspx?ara=" + ara.Text.Trim());
                
            }

        }


    }
}