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
    public partial class Kurumsal : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbTravelConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            Button1.Enabled = false;
        }
        string id;

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblKurumsal", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            baglanti.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblKurumsal set Baslik=@Baslik, Ozet=@Ozet, Detay=@Detay where id=@id", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("Kurumsal.aspx");
        }
    }
}