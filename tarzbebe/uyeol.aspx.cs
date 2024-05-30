using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace master
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtkull.Text =="" || txtad.Text =="" || txtsfr.Text =="" || txtsoyad.Text =="" ||
                txtsfr2.Text =="" || txtposta.Text =="" || txtadres.Value =="")
            {
                lblhata.Text = "Alanlar Boş Geçilemez";
                lblhata.CssClass = "text-danger";
            }

            else
            {
                if (txtsfr.Text != txtsfr2.Text)
                {
                    lblhata.Text = "Şifreler Uyuşmuyor Lütfen Kontrol Edin...";
                    lblhata.CssClass = "text-danger";
                }

                else
                {
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                    baglanti.Open();
                    OleDbCommand komut = new OleDbCommand("insert into uyeler(uyekull,uyead,uyesoyad,uyesifre,uyeposta,uyeadres) values(@uyekull,@uyead,@uyesoyad,@uyesifre,@uyeeposta,@uyeadres)", baglanti);

                
                    komut.Parameters.AddWithValue("@uyekull", txtkull.Text);
                    komut.Parameters.AddWithValue("@uyead", txtad.Text);
                    komut.Parameters.AddWithValue("@uyesoyad", txtsoyad.Text);
                    komut.Parameters.AddWithValue("@uyesifre", txtsfr.Text );
                    komut.Parameters.AddWithValue("@uyeposta", txtposta.Text);
                    komut.Parameters.AddWithValue("@uyeadres", txtadres.Value);

                    


                   


                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    lblhata.Text = "Kaydınız başarıyla alındı. 3 Saniye içinde Anasayfaya yönlendiriliyorsunuz.";
                    lblhata.CssClass="text-success";
                    txtkull.Enabled=false;
                    txtsfr.Enabled=false;
                    txtsfr2.Enabled=false;
                    txtposta.Enabled=false;
                    txtadres.Visible=false;
                    txtad.Enabled=false;
                    txtsoyad.Enabled=false;
                    Button1.Enabled = false;
                    Button2.Enabled = false;
                  

                    yon.InnerHtml="<meta http-equiv='refresh' content='3;url=index.aspx'>";






                   

                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtkull.Text = "";
            txtad.Text = "";
            txtsoyad.Text = "";
            txtadres.Value = "";
            txtposta.Text = "";
            txtsfr.Text = "";
            txtsfr2.Text = "";
            




        }
    }
}