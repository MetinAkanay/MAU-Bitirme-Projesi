using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace master
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("index.aspx");
            }

            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from anasayfa_urunler order by urun_no", baglanti);
                DataTable dt = new DataTable();
                adaptor.Fill(dt);
                tekrar.DataSource = dt;
                tekrar.DataBind();
                baglanti.Close();
            }
        }
    }
}