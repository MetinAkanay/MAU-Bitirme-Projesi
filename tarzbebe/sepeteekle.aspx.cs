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
    public partial class WebForm17 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye_no"] == null)
            {
                durum.Text = "Ürünü Sepete Eklemek İçin Öncelikle Giriş Yapmalısın...";
                yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=girisyap.aspx'>";

            }

            else
            {
                string urunno = Request.QueryString["id"];
                OleDbConnection bag = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                bag.Open();
                OleDbCommand komut = new OleDbCommand("select * from sepet where uye_no=" + Session["uye_no"] + "and urun_no=" + urunno, bag);


                OleDbDataReader okuyucu = komut.ExecuteReader();
                if (okuyucu.Read())
                {
                    durum.Text = "ürün sepette mevcut";
                    yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=sepet.aspx'>";
                }

                else
                {
                    OleDbCommand komut2 = new OleDbCommand("insert into sepet(urun_no,uye_no) values(@urun_no2,@uye_no2)", bag);
                    komut2.Parameters.AddWithValue("@urun_no2", urunno);
                    komut2.Parameters.AddWithValue("@uye_no2", Session["uye_no"]);
                    komut2.ExecuteNonQuery();
                    yon.InnerHtml = "<meta http-equiv='refresh' content='0;url=sepet.aspx'>";
                }

                bag.Close();



            }
        }
    }
}