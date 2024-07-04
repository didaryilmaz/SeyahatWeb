using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yönetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        DateTime bugun = DateTime.Now;
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbTravelConnectionString"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblBlog (Baslik, Ozet, Kategorild, Resim, Detay, Tarih) values (@Baslik, @Ozet, @Kategorild, @Resim, @Detay, @Tarih)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Kategorild", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
            komut.ExecuteNonQuery(); 
            baglanti.Close();
            Response.Redirect("BlogEkle.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "images/jpeg" || FileUpload1.PostedFile.ContentType == "images/jpg" || FileUpload1.PostedFile.ContentType == "images/png")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg,jpg veya png uzantılı resim seçin";
                }
            }
            else
            {
                lblResim.Text = "lütfen bir resim seçin...";
            }
        }
    }
}