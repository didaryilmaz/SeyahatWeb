<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="SeyahatWeb.Yönetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Site Ayarları İşlem Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
     <div class="col-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <form class="forms-sample" runat="server">
                <div class="form-group">
                    <label for="exampleInputNamel">E-Mail</label>
                    <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                </div> 
                     <div class="form-group">
                    <label for="exampleInputEmail3">Telefon</label>
                   <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control" Height="100px" placeholder="Telefon"></asp:TextBox>
               </div>
                <div class="form-group">
                    <label for="exampleInputPassword4">Adres</label>
                   <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" placeholder="Adres"></asp:TextBox>
                </div>
                    <div class="form-group">
                    <label for="exampleInputEmail3">Instagram</label>
                   <asp:TextBox ID="txtInstagram" runat="server" CssClass="form-control" Height="100px" placeholder="Instagram"></asp:TextBox>
               </div>
                    <div class="form-group">
                    <label for="exampleInputEmail3">Facebook</label>
                   <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" Height="100px" placeholder="Facebook"></asp:TextBox>
               </div>
                <div class="form-group">
                    <label>Logo</label>
                    <input type="file" name="img[]" class="file-upload-default">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info"/>
                </div>
                <div class="form-group">
                    <asp:Label ID="lblLogo" runat="server" Text=""></asp:Label>
                </div>
                <div class="form-group">
                    <label for="exampleTextareal">Site Açıklama</label>
                    <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" Height="100px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
                    <asp:Label ID="lblTarih" runat="server" Text=""></asp:Label>
                </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label><br />
                    <asp:Button ID="Button2" runat="server" Text="Yükle" CssClass="btn btn-danger" OnClick="Button2_Click1" />
                    <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-success" OnClick="Button1_Click1"  />
                </form>
              </div>
          </div>
      </div>
</asp:Content>
