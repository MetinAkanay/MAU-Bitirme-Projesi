using System;
using System.Collections.Generic;
using System.Data.OleDb;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tarzbebe
{
    public partial class admin2elurunguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("admingiris.aspx");
            }

            else
            {
                if (IsPostBack == false)
                {
                    string urunno = Request.QueryString["id"];
                    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                    baglanti.Open();
                    OleDbCommand komut = new OleDbCommand("select * from uyeurunekle where urun_no=" + urunno, baglanti);
                    OleDbDataReader okuyucu = komut.ExecuteReader();
                    if (okuyucu.Read())
                    {
                        txturunad.Text = okuyucu["urun_adi"].ToString();
                        txturunfiyat.Text = okuyucu["urun_fiyat"].ToString();
                        txturunyas.Text = okuyucu["urun_yas"].ToString();
                        txturunkategori.Text = okuyucu["urun_kategori"].ToString();
                        txturuncinsiyet.Text = okuyucu["urun_cins"].ToString();
                        txturunkod.Text = okuyucu["urun_kodu"].ToString();
                        txturuntaksitlifiyat.Text = okuyucu["urun_taksitlifiyat"].ToString();
                        txturunkumas.Text = okuyucu["urun_kumas"].ToString();
                        txttel.Text = okuyucu["tel"].ToString();
                    }
                    baglanti.Close();


                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string urunno = Request.QueryString["id"];
            OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
            baglanti.Open();
            OleDbCommand sorgu = new OleDbCommand("update uyeurunekle set urun_adi=@urun_adi,urun_fiyat=@urun_fiyat,urun_yas=@urun_yas,urun_kategori=@urun_kategori,urun_cins=@urun_cins,urun_kodu=@urun_kodu,urun_taksitlifiyat=@urun_taksitlifiyat,tel=@tel,urun_kumas=@urun_kumas where urun_no=" + urunno, baglanti);
            sorgu.Parameters.AddWithValue("@urun_adi", txturunad.Text);
            sorgu.Parameters.AddWithValue("@urun_fiyat", txturunfiyat.Text);
            sorgu.Parameters.AddWithValue("@urun_yas", txturunyas.Text);
            sorgu.Parameters.AddWithValue("@urun_kategori", txturunkategori.Text);
            sorgu.Parameters.AddWithValue("@urun_cins", txturuncinsiyet.Text);
            sorgu.Parameters.AddWithValue("@urun_kodu", txturunkod.Text);
            sorgu.Parameters.AddWithValue("@urun_taksitlifiyat", txturuntaksitlifiyat.Text);
            sorgu.Parameters.AddWithValue("@urun_kumas", txturunkumas.Text);
            sorgu.Parameters.AddWithValue("@tel", txttel.Text);
            sorgu.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("admin.aspx");

        }
        protected void Button2_Click(object sender, EventArgs e)
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
                    OleDbCommand komut = new OleDbCommand("insert into adminuyeurunekle (urun_adi,urun_fiyat,urun_yas,urun_kategori,urun_cins,urun_taksitlifiyat,urun_kodu,urun_kumas,tel,urun_resim) values(@urun_adi,@urun_fiyat,@urun_yas,@urun_kategori,@urun_cins,@urun_taksitlifiyat,@urun_kodu,@urun_kumas,@tel,@urun_resim)", baglanti);
                    komut.Parameters.AddWithValue("@urun_adi", txturunad.Text);
                    komut.Parameters.AddWithValue("@urun_fiyat", txturunfiyat.Text);
                    komut.Parameters.AddWithValue("@urun_yas", txturunyas.Text);
                    komut.Parameters.AddWithValue("@urun_kategori", txturunkategori.Text);
                    komut.Parameters.AddWithValue("@urun_cins", txturuncinsiyet.Text);
                    komut.Parameters.AddWithValue("@urun_taksitlifiyat", txturuntaksitlifiyat.Text);
                    komut.Parameters.AddWithValue("@urun_kodu", txturunkod.Text);
                    komut.Parameters.AddWithValue("@urun_kumas", txturunkumas.Text);
                    komut.Parameters.AddWithValue("@tel", txttel.Text);
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