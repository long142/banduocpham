<%@ Page Language="C#" AutoEventWireup="true" CodeFile="giohang.aspx.cs" Inherits="giohang" %>

<%@ Import Namespace="System.Data" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>TUAN KHOI SHOP</title>
    <link href="<%= clsConfig.GetHostUrl() %>/css/css.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <script type="text/javascript" src="<%= clsConfig.GetHostUrl() %>/js/fadeslideshow.js"></script>
    <script type="text/javascript" src="<%= clsConfig.GetHostUrl() %>/js/dropdowncontent.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="fb-root">
    </div>
    <script>        (function (d, s, id) {
            var js, fjs = d.getElementsByTagName(s)[0];
            if (d.getElementById(id)) return;
            js = d.createElement(s); js.id = id;
            js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.7";
            fjs.parentNode.insertBefore(js, fjs);
        } (document, 'script', 'facebook-jssdk'));</script>
    <div class="site<%=strSiteHome %>">
        <div class="container">
            <!-- begin menu -->
            <asp:PlaceHolder ID="inc_header" runat="server"></asp:PlaceHolder>
            <!-- end menu -->
            <div class="midle">
                <%--<div style="text-align:right; margin-bottom:5px; color:Red;"><marquee scrollamount="2" scrolldelay="2""><b>Từ 01/05 đến 31/05/ 2014 khuyến mãi đặc biệt 20-30% nhân dịp kỷ niệm ngày thành lập công ty</b></marquee></div>--%>
                <!--begin flash banner-->
                <asp:PlaceHolder ID="inc_intro" runat="server"></asp:PlaceHolder>
                <!-- end flash banner -->
                <div style="clear: both">
                </div>
                <!-- end right-->
                <div class="left">
                    <%
        
                        string strMod = clsInput.getStringInput("mod", 0);
                        string strPage = clsInput.getStringInput("page", 0);
                        int intBoxCatID = clsInput.getNumericInput("catid", 0);
          
                    %>
                    <%
                        if (strMod == "granite")
                        {
                    %>
                    <div class="blockleft">
                        <div class="tab">
                            <span>
                                <%= lang.setLangValue("Granites","Các loại đá") %></span>
                        </div>
                        <div class="blockcontent bgcate">
                            <div class="listcate">
                                <%
                            DataTable dtBoxGranite = clsDatabase.getDataTable("select * from tbl_category_news where C_MenuNgang = 1 and FK_LangID = " + lang.getLangID() + " and (FK_ParentID = 13 or FK_ParentID = 21 ) order by C_Rank desc");
                            for (int iBoxGranite = 0; iBoxGranite < dtBoxGranite.Rows.Count; iBoxGranite++)
                            {
                                %>
                                <a href="<%= clsConfig.GetHostUrl() %>/Granite/3/<%= dtBoxGranite.Rows[iBoxGranite]["PK_CategoryID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtBoxGranite.Rows[iBoxGranite]["C_Name"].ToString()) %>.aspx"
                                    <% if (Convert.ToInt32(dtBoxGranite.Rows[iBoxGranite]["PK_CategoryID"].ToString()) == intBoxCatID) { %>
                                    class="active" <% } %>>
                                    <%= dtBoxGranite.Rows[iBoxGranite]["C_Name"].ToString() %></a>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <!-- end block left-->
                    <% } %>
                    <%
                        if (strMod == "product" && strPage.Equals("product"))
                        {

                            int intTabId = 4;
                            int intParentID = 0;
                            if (lang.getLangID() == 2)
                                intParentID = 20;
                            else
                                intParentID = 12;

                            int intCatID = clsInput.getNumericInput("catid", 0);
                            DataTable categoryItem = clsDatabase.getDataTable("Select * from tbl_category_product where PK_CategoryID=" + intCatID);

                            string strCatName = categoryItem.Rows[0]["C_Name"].ToString();
                            DataTable dsSubCategory = clsDatabase.getDataTable("Select * from tbl_category_product where FK_ParentID=" + intCatID);

                            DataTable dsParentCategory = clsDatabase.getDataTable("Select * from tbl_category_product where PK_CategoryID =(Select FK_ParentID from tbl_category_product where PK_CategoryID=" + intCatID + ")");

                            string test = "";      
                    %>
                    <%if (dsParentCategory.Rows.Count != 0)
                      {%>
                    <div class="blockleft">
                        <div class="tab">
                            <span>
                                <%=dsParentCategory.Rows[0]["C_Name"].ToString() %></span>
                        </div>
                        <div class="blockcontent bgcate">
                            <div class="listcate">
                                <%
                          DataTable dtBoxProduct = clsDatabase.getDataTable("select * from tbl_category_product where  FK_LangID = " + lang.getLangID() + " and FK_ParentID = " + dsParentCategory.Rows[0]["PK_CategoryID"].ToString() + " order by C_Rank desc");
                          int index = 1;
                          for (int iBoxProduct = 0; iBoxProduct < dtBoxProduct.Rows.Count; iBoxProduct++)
                          {
                              index++;
                                %>
                                <a href="<%= clsConfig.GetHostUrl() %>/Product/<%=index %>/<%= dtBoxProduct.Rows[iBoxProduct]["PK_CategoryID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtBoxProduct.Rows[iBoxProduct]["C_Name"].ToString()) %>.aspx"
                                    <% if (Convert.ToInt32(dtBoxProduct.Rows[iBoxProduct]["PK_CategoryID"].ToString()) == intBoxCatID) { %>
                                    class="active" <% } %>>
                                    <%= dtBoxProduct.Rows[iBoxProduct]["C_Name"].ToString()%></a>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <%} %>
                    <!-- end block left-->
                    <% }//end mod product 
                    %>
                    <%
                        int intId = clsInput.getNumericInput("id", 0);

                        if (strMod == "news" && (intId == 193 || intId == 97 || intId == 101))
                        {
                    %>
                    <div class="blockleft">
                        <div class="tab">
                            <span>
                                <%= lang.setLangValue("Products","Công ty") %></span>
                        </div>
                        <div class="blockcontent bgcate">
                            <div class="listcate">
                                <%
                            DataTable dtNhaxuong = clsDatabase.getDataTable("select * from tbl_category_news where C_MenuNgang = 1 and FK_LangID = " + lang.getLangID() + " and (FK_ParentID = 14 or FK_ParentID = 23 ) order by C_Rank desc");
                            for (int iBoxNhaXuong = 0; iBoxNhaXuong < dtNhaxuong.Rows.Count; iBoxNhaXuong++)
                            {
                                %>
                                <a href="<%= clsConfig.GetHostUrl() %>/category/1/<%= dtNhaxuong.Rows[iBoxNhaXuong]["PK_CategoryID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtNhaxuong.Rows[iBoxNhaXuong]["C_Name"].ToString()) %>.aspx"
                                    <% if (Convert.ToInt32(dtNhaxuong.Rows[iBoxNhaXuong]["PK_CategoryID"].ToString()) == intBoxCatID) { %>
                                    class="active" <% } %>>
                                    <%= dtNhaxuong.Rows[iBoxNhaXuong]["C_Name"].ToString()%></a>
                                <% } %>
                            </div>
                        </div>
                    </div>
                    <!-- end block left-->
                    <% } %>
                    <div class="blockleft">
                        <div class="tab">
                            <span><a href="#">
                                <%= lang.setLangValue("Hot product", "Sản phẩm nổi bật")%></a></span>
                        </div>
                        <div class="blockcontent">
                            <marquee id="marslide" onmouseout="this.start();" onmouseover="this.stop();" direction="up"
                                style="height: 290px;">
            <div class="list_news"> 
            <%
                DataTable dtHotProduct = clsDatabase.getDataTable("select TOP 10 * from tbl_product where FK_LangID = " + lang.getLangID() + " and C_Active = 1 and C_Hot = 1 order by C_Rank desc");
                for (int iHotProduct = 0; iHotProduct < dtHotProduct.Rows.Count; iHotProduct++)
                {
             %>
            <a href="<%= clsConfig.GetHostUrl() %>/detail-product/0/<%= dtHotProduct.Rows[iHotProduct]["PK_ProductID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtHotProduct.Rows[iHotProduct]["C_Name"].ToString()) %>.aspx"><%= dtHotProduct.Rows[iHotProduct]["C_Name"].ToString()%></a>
            <% } %>
            
            </div></marquee>
                            <%--<div class="morenew"> <a href="<%= clsConfig.GetHostUrl() %>/news/hot-news.aspx"><%= lang.setLangValue("More", "Xem tiếp")%> &raquo;</a> </div>--%>
                        </div>
                    </div>
                    <!-- end block left-->
                    <div class="blockleft">
                        <div class="tab">
                            <span><a href="#">
                                <%= lang.setLangValue("Lates news", "tin mới")%></a></span>
                        </div>
                        <div class="blockcontent">
                            <div class="list_news">
                                <%
                                    DataTable dtHotNews = clsDatabase.getDataTable("select TOP 10 * from tbl_news where FK_LangID = " + lang.getLangID() + " and C_Active = 1 and C_Hot = 1 order by C_Rank desc");
                                    for (int iHotNews = 0; iHotNews < dtHotNews.Rows.Count; iHotNews++)
                                    {
                                %>
                                <a href="<%= clsConfig.GetHostUrl() %>/detail-news/0/<%= dtHotNews.Rows[iHotNews]["PK_NewsID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtHotNews.Rows[iHotNews]["C_Name"].ToString()) %>.aspx">
                                    <%= dtHotNews.Rows[iHotNews]["C_Name"].ToString() %></a>
                                <% } %>
                            </div>
                            <%--<div class="morenew">
                                <a href="<%= clsConfig.GetHostUrl() %>/news/hot-news.aspx">
                                    <%= lang.setLangValue("More", "Xem tiếp")%>
                                 
                            </div>--%>
                        </div>
                    </div>
                    <!-- end block left-->
                </div>
                <!-- end left-->
                <div class="center1">
                    <asp:Panel ID="PanelCoHang" runat="server">
                        <div class="blockright">
                            <div class="tabright">
                                <span>Giỏ hàng</span>
                            </div>
                            <div class="contentright">
                                <div class="giohang">

                                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
        CellPadding="3" Font-Size="Medium" ForeColor="Black" GridLines="Vertical"  
         Width="760px">
        <Columns>
            <%--<asp:TemplateField HeaderText="Tên sản phẩm">
                <ItemTemplate>
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" 
                        ForeColor="Red" 
                        NavigateUrl='<%# "Chitietsanpham.aspx?id="+Eval("ID") %>' 
                        Text='<%# Bind("TenSanPham") %>'></asp:HyperLink>
                </ItemTemplate>
                

                <HeaderStyle BackColor="Silver" ForeColor="Black" />
                <ItemStyle ForeColor="Red" />
            </asp:TemplateField>--%>
            <asp:BoundField DataField="TenSanPham" HeaderText="Đơn Giá">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
                </asp:BoundField>

            <asp:TemplateField HeaderText="SL">
                <ItemTemplate>
                    <asp:TextBox ID="txtSL" runat="server" Height="25px" 
                        Text='<%# Bind("SoLuong") %>' Width="30px"></asp:TextBox>
                </ItemTemplate>
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:TemplateField>
            <asp:BoundField DataField="GiaBan" HeaderText="Đơn Giá">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Size" Visible="false">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Màu" Visible="false">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Chất liệu" Visible="false">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="SoLuong" HeaderText="Trọng lượng" Visible="false">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="MaSanPham" HeaderText="Mã SP">
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
            </asp:BoundField>
            <asp:BoundField DataField="Money" HeaderText="Thành Tiền" >
                <HeaderStyle BackColor="Silver" ForeColor="Black" />
                <ItemStyle HorizontalAlign="Right" />
            </asp:BoundField>
            <asp:TemplateField HeaderStyle-BackColor="Silver" HeaderText="Xóa">
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <asp:CheckBox ID="CheckXoa" runat="server" CssClass="_align_center" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <EmptyDataTemplate>
            <asp:TextBox ID="TextBox1" runat="server" Height="25px" 
                Text='<%# Bind("SL") %>' Width="41px"></asp:TextBox>
        </EmptyDataTemplate>
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="#CCCCCC" />
    </asp:GridView>

                                    <%--<table style="display:none;">
                                        <tr>
                                            <th>
                                                Xóa
                                            </th>
                                            <th>
                                                Tên sản phẩm
                                            </th>
                                            <th>
                                                Số lượng
                                            </th>
                                            <th>
                                                Đơn giá
                                            </th>
                                            <th>
                                                Mã sản phẩm
                                            </th>
                                            <th>
                                                Thành tiền
                                            </th>
                                        </tr>
                                        <%if (dsGioHang != null)
                                          {
                                              if (dsGioHang.Rows.Count > 0)
                                              { %>
                                        <% foreach (DataRow ghItem in dsGioHang.Rows)
                                           { %>
                                        <tr>
                                            <td style="text-align:center">
                                                
                                            </td>
                                            <td style="text-align:left">
                                                <%=ghItem["TenSanPham"].ToString()%>
                                            </td>
                                            <td style="text-align:center">
                                                <input name="txtSoLuong" type="text" id="txtSoLuong_<%=ghItem["ID"].ToString() %>" style="width:50px"
                                                value="<%=ghItem["SoLuong"].ToString()%>"  />
                                                

                                            </td>
                                            <td style="text-align:right">
                                                <%=clsFunction.getNumberVN(ghItem["GiaBan"].ToString())%>
                                            </td>
                                            <td style="text-align:center">
                                                <%=ghItem["MaSanPham"].ToString()%>
                                            </td>
                                            <td style="text-align:right">
                                                <%=clsFunction.getNumberVN(ghItem["Money"].ToString())%>
                                            </td>
                                        </tr>
                                        <%} %>
                                        <%}
                                          }
                                        %>
                                        <tr>
                                            <td style="text-align:right;font-weight:bold;color:Black;" colspan="5">
                                                TỔNG TIỀN:
                                            </td>
                                            <td style="text-align:right;font-weight:bold;color:Red;">
                                            <%=clsFunction.getNumberVN("99999999999")%>
                                            </td>
                                        </tr>
                                    </table>--%>
                                </div>

                                <div style="text-align:right; margin:10px">
        <%--<asp:Label ID="lblTTL" runat="server" Text="Tổng trọng lượng: " Visible="false"></asp:Label>
        <asp:Label ID="lblTongTL" runat="server" Visible="false"></asp:Label>--%>
        
        <br />
        <span style="font-weight:bold;color:Red;">
        <asp:Label ID="Label5" runat="server" Text="Tổng tiền: "></asp:Label>
        <asp:Label ID="lblTongTien" runat="server"></asp:Label></span>
    </div>
                                <div style="border:1px solid #C0C0C0; background-color: #EFEFEF; padding:5px; margin:10px;float:right;">
        <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" onclick="btnCapNhat_Click" />

        <asp:Button ID="btnTiepTucMuaHang" runat="server" Text="Tiếp tục mua hàng" 
            onclick="btnTiepTucMuaHang_Click"  />

        <asp:Button ID="btnThanhToan" runat="server" Text="Thanh toán" 
            onclick="btnThanhToan_Click1"  />
        
    </div>

                            </div>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="PanelKhongHang" runat="server">
                        <div style="border: 1px solid #C0C0C0; background-color: #EFEFEF; padding: 10px;
                            margin: 10px">
                            <asp:Label ID="Label7" runat="server" Text="Giỏ hàng của bạn hiện không có mặt hàng nào!"></asp:Label>
                        </div>
                        <div style="border: 1px solid #C0C0C0; background-color: #EFEFEF; padding: 7px; margin: 10px;
                            text-align: right">
                            <asp:Button ID="btnMuaHangTiep" runat="server" Text="Tiếp tục mua hàng" 
                                onclick="btnMuaHangTiep_Click"  />
                        </div>
                    </asp:Panel>
                    <!-- end blockright-->
                </div>
            </div>
            <!-- end midle-->
            <div style="clear: both">
            </div>
        </div>
        <!-- end container-->
        <div class="bottom">
            <asp:PlaceHolder ID="inc_footer" runat="server"></asp:PlaceHolder>
        </div>
    </div>
    <script lang="javascript">        (function () { var pname = ((document.title != '') ? document.title : document.querySelector('h1').innerHTML); var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=0cf27cf31d5f926f429910a5e5e28f1b&data=eyJzc29faWQiOjQxOTI5ODksImhhc2giOiJmZGNlMzkwZmQ3M2M3ZmJjZDQ4Y2I5ZjViZDI5MGVhZCJ9&pname=' + pname; var s = document.getElementsByTagName('script'); s[0].parentNode.insertBefore(ga, s[0]); })();</script>
    <%--<!--Start of Tawk.to Script-->
<script type="text/javascript">
    var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
    (function () {
        var s1 = document.createElement("script"), s0 = document.getElementsByTagName("script")[0];
        s1.async = true;
        s1.src = 'https://embed.tawk.to/57dcfaf6927cd860c83a9249/default';
        s1.charset = 'UTF-8';
        s1.setAttribute('crossorigin', '*');
        s0.parentNode.insertBefore(s1, s0);
    })();
</script>
<!--End of Tawk.to Script-->--%>
    </form>
</body>
</html>
