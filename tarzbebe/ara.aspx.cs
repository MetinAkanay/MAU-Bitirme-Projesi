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
    public partial class ara : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string kelime = Request.QueryString["ara"];
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
            baglanti.Open();
            OleDbDataAdapter komut = new OleDbDataAdapter("select * from anasayfa_urunler where urun_adi like '%" + kelime + "%'", baglanti);
            DataTable dt = new DataTable();
            komut.Fill(dt);
            tekrar.DataSource = dt;
            tekrar.DataBind();
            baglanti.Close();
        }
    }
}