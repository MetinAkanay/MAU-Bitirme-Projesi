﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace master
{
    public partial class adminurunsil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("index.aspx");
            }

            else
            {
                string urunid = Request.QueryString["id"];
                OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Ace.OleDb.12.0;Data Source=" + Server.MapPath("urunlersite.accdb"));
                baglanti.Open();
                OleDbCommand komut = new OleDbCommand("delete from anasayfa_urunler where urun_no=" + urunid, baglanti);
                komut.ExecuteNonQuery();
                baglanti.Close();
                Response.Redirect("admin.aspx");
            }
        }
    }
}