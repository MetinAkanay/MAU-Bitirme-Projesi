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
    public partial class erkekbebekpantolonurunozel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string gelenid = Request.QueryString["id"];

            if (gelenid == null)
            {
                Response.Redirect("index.aspx");

            }

            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.Oledb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbDataAdapter adaptor = new OleDbDataAdapter("select * from anasayfa_urunler where urun_no=" + gelenid, baglanti);
                DataTable dt = new DataTable();
                adaptor.Fill(dt);
                tekrar.DataSource = (dt);
                tekrar.DataBind();
                baglanti.Close();
            }
        }
    }
}