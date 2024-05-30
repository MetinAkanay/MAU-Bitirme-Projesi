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
    public partial class adminurunguncelle : System.Web.UI.Page
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
                    OleDbCommand komut = new OleDbCommand("select * from anasayfa_urunler where urun_no=" + urunno, baglanti);
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
            OleDbCommand sorgu = new OleDbCommand("update anasayfa_urunler set urun_adi=@urun_adi,urun_fiyat=@urun_fiyat,urun_yas=@urun_yas,urun_kategori=@urun_kategori,urun_cins=@urun_cins,urun_kodu=@urun_kodu,urun_taksitlifiyat=@urun_taksitlifiyat,urun_kumas=@urun_kumas where urun_no=" + urunno, baglanti);
            sorgu.Parameters.AddWithValue("@urun_adi", txturunad.Text);
            sorgu.Parameters.AddWithValue("@urun_fiyat", txturunfiyat.Text);
            sorgu.Parameters.AddWithValue("@urun_yas", txturunyas.Text);
            sorgu.Parameters.AddWithValue("@urun_kategori", txturunkategori.Text);
            sorgu.Parameters.AddWithValue("@urun_cins", txturuncinsiyet.Text);
            sorgu.Parameters.AddWithValue("@urun_kodu", txturunkod.Text);
            sorgu.Parameters.AddWithValue("@urun_taksitlifiyat", txturuntaksitlifiyat.Text);
            sorgu.Parameters.AddWithValue("@urun_kumas", txturunkumas.Text);
            sorgu.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("admin.aspx");

        }
    }
}