﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="SeyahatWeb.Yönetim.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Yeni tur paketi ekleme sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-md-6 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Tur Adı</label>
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Tur Fiyat</label>
                        <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tur Fiyat"></asp:TextBox>
                    </div>
                   <div class="form-group">
                      <label for="exampleInputEmail3">Tur Süresi</label>
                        <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>
                    </div>
                      <div class="form-group">
                      <label for="exampleInputEmail3">Tur Konum</label>
                        <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Tur Konum"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Tur Resim</label>
                        <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control file-upload-info" />
                        <asp:Button ID="Button2" runat="server" Text="Resim Yükle" OnClick="Button2_Click1" />
                    </div>
                    <div class="form-group">
                      <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                    </div>
                    <div class="form-group">
                        <label for="exampleTextareal">Tur Detay</label>
                        <asp:TextBox ID="txtDetay" runat="server" TextMode="Multiline" Height="100px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" CssClass="btn btn-gradient-primary me-2" Text="Kaydet" OnClick="Button1_Click" />
                  </form>
                </div>
              </div>
        </div>
</asp:Content>
