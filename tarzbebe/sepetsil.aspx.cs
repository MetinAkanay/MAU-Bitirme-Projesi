using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

namespace master
{
    public partial class WebForm20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye_no"] == null)
            {
                Response.Redirect("girisyap.aspx");
            }

            else
            {
                string urunid = Request.QueryString["id"];
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("delete * from sepet where urun_no=" + urunid, baglanti);
                komut.ExecuteNonQuery();
                yon.InnerHtml = "<meta http-equiv='refresh' content='1,url=sepet.aspx'>";
                
            }
        }
    }
}