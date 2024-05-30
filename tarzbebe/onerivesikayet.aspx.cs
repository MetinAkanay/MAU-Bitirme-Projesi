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
    public partial class onerivesikayet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
               

                
                if (dosya.PostedFile.ContentType == " ")
                {
                    dosya.SaveAs(Server.MapPath("/img/") + dosya.FileName);
                    Image1.ImageUrl = "/img/" + dosya.FileName;
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                    baglanti.Open();
                    OleDbCommand komut = new OleDbCommand("insert into oneri_sikayet (ad,soyad,mail,telefon,konu,mesaj) values(@ad,@soyad,@mail,@telefon,@konu,@mesaj)", baglanti);
                    komut.Parameters.AddWithValue("@ad",txtad.Text);
                    komut.Parameters.AddWithValue("@soyad", txtsoyad.Text);
                    komut.Parameters.AddWithValue("@mail", txtmail.Text);
                    komut.Parameters.AddWithValue("@telefon", txttel.Text);
                    komut.Parameters.AddWithValue("@konu", txtkonu.Text);
                    komut.Parameters.AddWithValue("@mesaj", txtmesaj.Value);
                    
                    
                    
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=index.aspx'>";
                    hata.Text = "Öneri&Şikayet Başarıyla Gönderildi.Tarafınıza Dönüş Yapılıcaktır.";
                    hata.CssClass = "text-danger";
                }
            else
            {
               
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("insert into oneri_sikayet (ad,soyad,mail,telefon,konu,mesaj,resim) values(@ad,@soyad,@mail,@telefon,@konu,@mesaj,@resim)", baglanti);
                komut.Parameters.AddWithValue("@ad", txtad.Text);
                komut.Parameters.AddWithValue("@soyad", txtsoyad.Text);
                komut.Parameters.AddWithValue("@mail", txtmail.Text);
                komut.Parameters.AddWithValue("@telefon", txttel.Text);
                komut.Parameters.AddWithValue("@konu", txtkonu.Text);
                komut.Parameters.AddWithValue("@mesaj", txtmesaj.Value);
                komut.Parameters.AddWithValue("@resim", "img/" + dosya.FileName);


                komut.ExecuteNonQuery();
                baglanti.Close();
                yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=index.aspx'>";
                hata.Text = "Öneri&Şikayet Başarıyla Gönderildi.Tarafınıza Dönüş Yapılıcaktır.";
                hata.CssClass = "text-danger";
            }
                   



                }
            }
        }
    
