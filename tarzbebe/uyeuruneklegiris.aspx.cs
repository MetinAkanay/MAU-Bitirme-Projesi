using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;
namespace tarzbebe
{
    public partial class uyeuruneklegiris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye_no"] == null)
            {
                durum.Text = "Ürün Eklemek İçin Öncelikle Giriş Yapmalısın...";
                yon.InnerHtml = "<meta http-equiv='refresh' content='3,url=girisyap.aspx'>";

            }
        }
    }
}