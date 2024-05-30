using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
namespace tarzbebe
{
    public partial class uyeurunekle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (dosya.HasFile == false)
            {
                hata.Text = "Herhangi bir resim eklenmedi";
            }

            else
            {
                if (dosya.PostedFile.ContentType != "image/jpeg")
                {
                    hata.Text = "Eklediğiniz dosya resim değil";
                }

                else
                {
                    dosya.SaveAs(Server.MapPath("/img/") + dosya.FileName);
                    Image1.ImageUrl = "/img/" + dosya.FileName;
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                    baglanti.Open();
                    OleDbCommand komut = new OleDbCommand("insert into uyeurunekle (urun_adi,urun_fiyat,urun_yas,urun_kategori,urun_cins,urun_taksitlifiyat,urun_kodu,urun_kumas,tel,urun_resim) values(@urun_adi,@urun_fiyat,@urun_yas,@urun_kategori,@urun_cins,@urun_taksitlifiyat,@urun_kodu,@urun_kumas,@tel,@urun_resim)", baglanti);
                    komut.Parameters.AddWithValue("@urun_adi", txturunad.Text);
                    komut.Parameters.AddWithValue("@urun_fiyat", txturunfiyat.Text);
                    komut.Parameters.AddWithValue("@urun_yas", txturunyas.Text);
                    komut.Parameters.AddWithValue("@urun_kategori", txturunkategori.Text);
                    komut.Parameters.AddWithValue("@urun_cins", txturuncinsiyet.Text);
                    komut.Parameters.AddWithValue("@urun_taksitlifiyat", txturuntaksitlifiyat.Text);
                    komut.Parameters.AddWithValue("@urun_kodu", txturunkod.Text);
                    komut.Parameters.AddWithValue("@urun_kumas", txturunkumas.Text);
                    komut.Parameters.AddWithValue("@tel", txttelno.Text);
                    komut.Parameters.AddWithValue("@urun_resim", "img/" + dosya.FileName);
                    komut.ExecuteNonQuery();
                    baglanti.Close();
                    yon.InnerHtml = "<meta http-equiv='refresh' content='1,url=index.aspx'>";
                    hata.Text = "Ürün başarıyla eklendi";
                    hata.CssClass = "text-danger";



                }
            }
        }
    }
}