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
    public partial class WebForm19 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye_no"] == null)
            {
                sonuc.Text = "Ürünü Sepete Eklemek İçin Öncelikle Giriş Yapmalısın...";
                yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=girisyap.aspx'>";

            }

            else
            {
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from sepet where uye_no=" + Session["uye_no"], bag);
                OleDbDataReader okuyucu = komut.ExecuteReader();
                DataTable dt = new DataTable();

                int sayac = 0;
                while (okuyucu.Read())
                {
                    sayac++;
                    if (sayac != 0)
                    {
                        OleDbDataAdapter adaptor1 = new OleDbDataAdapter("select * from anasayfa_urunler where urun_no=" + okuyucu["urun_no"], bag);
                        adaptor1.Fill(dt);
                        sonuc.Text = "Toplam Fiyat: " + string.Format("{0:C}", dt.Compute("sum(urun_fiyat)", ""));

                    }
                }
                tekrar.DataSource = dt;
                tekrar.DataBind();
                
                bag.Close();
            }
        }
    }
}