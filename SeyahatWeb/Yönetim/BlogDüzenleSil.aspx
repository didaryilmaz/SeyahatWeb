﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Yönetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDüzenleSil.aspx.cs" Inherits="SeyahatWeb.Yönetim.BlogDüzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 class="page-title">Blog Düzenle/Sil Sayfası</h3>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form runat="server" >
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTravelConnectionString %>" DeleteCommand="DELETE FROM [tblBlog] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlog] ([Baslik], [Ozet], [KategoriId], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @KategoriId, @Resim, @Detay, @Tarih)" SelectCommand="SELECT * FROM [tblBlog]" UpdateCommand="UPDATE [tblBlog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [KategoriId] = @KategoriId, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="KategoriId" Type="Int32" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Baslik" Type="String" />
                <asp:Parameter Name="Ozet" Type="String" />
                <asp:Parameter Name="KategoriId" Type="Int32" />
                <asp:Parameter Name="Resim" Type="String" />
                <asp:Parameter Name="Detay" Type="String" />
                <asp:Parameter Name="Tarih" Type="DateTime" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" CssClass="table table-responsive" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                <asp:BoundField DataField="KategoriId" HeaderText="KategoriId" SortExpression="KategoriId" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
            </Columns>
        </asp:GridView>
    </form>
</asp:Content>
