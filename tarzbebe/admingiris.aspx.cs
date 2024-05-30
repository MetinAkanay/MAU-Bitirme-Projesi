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
    public partial class admingiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Response.Redirect("admin.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

           OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("select * from admin where admin_kullaniciadi=@admin_kullaniciadi and admin_sifre=@admin_sifre", baglanti);

                komut.Parameters.AddWithValue("@admin_kullaniciadi", txtadmink.Text);
                komut.Parameters.AddWithValue("@admin_sifre", txtadmins.Text);

                OleDbDataReader okuyucu = komut.ExecuteReader();
                if (okuyucu.Read())
                {
                    Session.Add("admin", okuyucu["admin_kullaniciadi"]);
                    Session.Add("adminid", okuyucu["adminid"]);
                    
                    Response.Redirect("admin.aspx");

                }

                    else
                    {
                        hata.Text="Böyle Bir Admin Kayıtlı Değil..!";
                    hata.CssClass="text-danger";
                        
                    }
                baglanti.Close();

                }
        }
    }
