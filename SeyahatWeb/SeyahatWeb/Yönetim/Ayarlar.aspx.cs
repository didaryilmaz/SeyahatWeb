using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SeyahatWeb.Yönetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbTravelConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false; 
        }
        string id;

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["Tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtInstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            lblLogo.Text = tablo.Rows[0]["Logo"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            Label1.Text = tablo.Rows[0]["id"].ToString();
            baglanti.Close();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail, Tlf=@Tlf, Adres=@Adres, Instagram=@Instagram, Facebook=@Facebook, Logo=@Logo, SiteOzet=@SiteOzet where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtInstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@Logo", lblLogo.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");
        }
    }
}