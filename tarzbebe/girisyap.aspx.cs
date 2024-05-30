using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace master
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyeposta"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtsfr.Text == "" || txtposta.Text == "")
            {
                hata.Text = "E-posta veya Şifre Alanı Boş Bırakılamaz";

            }

            else
            {
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("select * from uyeler where uyeposta = @uyeposta and uyesifre = @uyesifre ", baglanti);

                komut.Parameters.AddWithValue("@uyeposta", txtposta.Text);
                komut.Parameters.AddWithValue("@uyesifre", txtsfr.Text);

                OleDbDataReader okuyucu = komut.ExecuteReader();
                if (okuyucu.Read())
                {
                    Session.Add("uyeposta", okuyucu["uyeposta"]);
                
                    Session.Add("uye_no", okuyucu["uye_no"]);
                    Session.Timeout = 2;
                    Response.Redirect("index.aspx");

                }

                    else
                    {
                        hata.Text="E-posta Adresinizi veya Şifrenizi yanlış girdiniz";
                        
                    }
                baglanti.Close();

                }

                
              
            }
        }
    }
