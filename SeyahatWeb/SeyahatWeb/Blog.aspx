<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Blog.aspx.cs" Inherits="SeyahatWeb.Blog" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Blog Yazılarımız</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <div class="col-lg-8 mb-5 mb-lg-0">
                    <div class="blog_left_sidebar">
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:dbTravelConnectionString %>" SelectCommand="SELECT * FROM [tblBlog] inner join tblBlogKategori on tblBlogKategori.id=tblBlog.KategoriId"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                            <ItemTemplate>
                                <article class="blog_item">
                                    <div class="blog_item_img">
                                        <img class="card-img rounded-0" src='images/blog/<%# Eval("Resim") %>' alt="">
                                        <a href="#" class="blog_item_date">
                                            <h3><%# Eval("Tarih") %></h3>
                                        </a>
                                    </div>

                                    <div class="blog_details">
                                        <a class="d-inline-block" href="single-blog.html">
                                            <h2><%# Eval("Baslik") %></h2>
                                        </a>
                                        <ul class="blog-info-link">
                                            <li><a href="#"><i class="fa fa-user"></i><%# Eval("Adi") %></a></li>
                                        </ul>
                                    </div>
                                </article>
                            </ItemTemplate>
                        </asp:DataList>
                        

                        <nav class="blog-pagination justify-content-center d-flex">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Previous">
                                        <i class="ti-angle-left"></i>
                                    </a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link">1</a>
                                </li>
                                <li class="page-item active">
                                    <a href="#" class="page-link">2</a>
                                </li>
                                <li class="page-item">
                                    <a href="#" class="page-link" aria-label="Next">
                                        <i class="ti-angle-right"></i>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="blog_right_sidebar">
                        <aside class="single_sidebar_widget search_widget">
                            <form action="#">
                                <div class="form-group">
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control" placeholder='Anahtarkelime Ara'
                                            onfocus="this.placeholder = ''"
                                            onblur="this.placeholder = 'Search Keyword'">
                                        <div class="input-group-append">
                                            <button class="btns" type="button"><i class="ti-search"></i></button>
                                        </div>
                                    </div>
                                </div>
                                <button class="button rounded-0 primary-bg text-white w-100 btn_1 boxed-btn"
                                    type="submit">Ara</button>
                            </form>
                        </aside>

                        <aside class="single_sidebar_widget post_category_widget">
                            <h4 class="widget_title">Kategoriler</h4>
                            <ul class="list cat-list">
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbTravelConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]"></asp:SqlDataSource>
                                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                                    <ItemTemplate>
                                        <li>
                                            <a href="#" class="d-flex">
                                                <p>
                                                    <%# Eval("Adi") %>
                                                </p>
                                                <p>(37)</p>
                                            </a>
                                        </li>
                                    </ItemTemplate>
                                </asp:Repeater>
                                
                            </ul>
                        </aside>

                       
                        <aside class="single_sidebar_widget tag_cloud_widget">
                            <h4 class="widget_title">Etiketler</h4>
                            <ul class="list">
                                <li>
                                    <a href="#">aşk</a>
                                </li>
                                <li>
                                    <a href="#">teknoloji</a>
                                </li>
                                <li>
                                    <a href="#">seyahat</a>
                                </li>
                                <li>
                                    <a href="#">rastorant</a>
                                </li>
                                <li>
                                    <a href="#">yaşam sitili</a>
                                </li>
                                <li>
                                    <a href="#">tasarım</a>
                                </li>
                            </ul>
                        </aside>
                    </div>
                </div>
</asp:Content>
