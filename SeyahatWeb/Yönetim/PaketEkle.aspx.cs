using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace SeyahatWeb.Yönetim
{
    public partial class PaketEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbTravelConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click1(object sender, EventArgs e)
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
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblTurPaket (Adi, Fiyat, Sure, Lokasyon, Resim, Detay) values (@Adi, @Fiyat, @Sure, @Lokasyon, @Resim, @Detay)", baglanti);
            komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat", Convert.ToInt32(txtFiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtSure.Text.ToString()));
            komut.Parameters.AddWithValue("@Lokasyon", txtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("PaketEkle.aspx");
        }
    }
}