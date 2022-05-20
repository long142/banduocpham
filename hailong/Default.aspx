<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" %>

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

                    <%--Begin page parent-product  --%>
                    <%
                        if (strMod == "product" && strPage.Equals("parent_product"))
                        {

                            int intTabId = 4;
                            int intParentID = 0;
                            

                            int intCatID = clsInput.getNumericInput("catid", 0);
                            DataTable categoryItem = clsDatabase.getDataTable("Select * from tbl_category_product where PK_CategoryID=" + intCatID);

                            string strCatName = categoryItem.Rows[0]["C_Name"].ToString();
                            DataTable dsSubCategory = clsDatabase.getDataTable("Select * from tbl_category_product where FK_ParentID=" + intCatID);

                            //DataTable dsParentCategory = clsDatabase.getDataTable("Select * from tbl_category_product where PK_CategoryID =(Select FK_ParentID from tbl_category_product where PK_CategoryID=" + intCatID + ")");

                            string test = "";      
                    %>
                    <%if (dsSubCategory.Rows.Count != 0)
                      {%>
                    <div class="blockleft">
                        <div class="tab">
                            <span>
                                <%=categoryItem.Rows[0]["C_Name"].ToString()%></span>
                        </div>
                        <div class="blockcontent bgcate">
                            <div class="listcate">
                                <%
                          DataTable dtBoxProduct = dsSubCategory;
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
                    <% }
                    %>
                    <%--End page parent-product  --%>
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
            
            </div>
            </marquee>
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
                                    &raquo;</a>
                            </div>--%>
                        </div>
                    </div>
                    <!-- end block left-->
                </div>
                <!-- end left-->
                <div class="center">
                    <asp:PlaceHolder ID="inc_content" runat="server"></asp:PlaceHolder>
                </div>
                <div class="right">
                    <div class="blockleft">
                        <div class="tab">
                            <span>Hỗ trợ trực tuyến</span>
                        </div>
                        <img src="<%= clsConfig.GetHostUrl() %>/images/sup-img.jpg" alt="" />
                        <div class="blockcontent">
                            <div class="list_support">
                                <ul>
                                    <li>
                                        <p class="name">
                                            Mrs Thảo</p>
                                        <p class="mobile">
                                            01667428888
                                        </p>
                                        <p class="mail">
                                            abcshop@gmail.com
                                        </p>
                                    </li>
                                    <li>
                                        <p class="name">
                                            Mr Cường</p>
                                        <p class="mobile">
                                            0973048888</p>
                                        <%--<p class="mail">
                                            tuankhoishop@gmail.com
                                        </p>--%>
                                    </li>
                                    <li>
                                        <p class="name">
                                            Mrs Hồng</p>
                                        <p class="mobile">
                                            0978848888
                                        </p>
                                        <%--<p class="mail">
                                            tuankhoishop@gmail.com
                                        </p>--%>
                                    </li>
                                </ul>
                                <div style="clear: both">
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end block left-->
                    <div class="blockleft">
                        <div class="tab">
                            <span>Báo giá</span>
                        </div>
                        <%
                            DataTable dsBaoGia = clsDatabase.getDataTable("Select * from tbl_product_price order by C_Rank desc");
                        %>
                        <div class="blockcontent">
                            <div class="pricelist">
                                <%foreach (DataRow item in dsBaoGia.Rows)
                                  {
                                %>
                                <a href="<%=clsConfig.GetHostUrl() %>/<%=item["C_Attach"].ToString() %>">
                                    <%=item["C_Name"].ToString() %></a>
                                <%} %>
                            </div>
                        </div>
                    </div>
                    <!-- end block left-->
                    <div class="blockleft">
                        <%--<img src="<%= clsConfig.GetHostUrl() %>/images/fb.jpg" alt="" />--%>
                        <div style="width: 200px; display: none;">
                            <div class="fb-like" data-href="<%= clsConfig.GetHostUrl() %>" data-width="170" data-layout="standard"
                                data-action="like" data-show-faces="true" data-share="true">
                            </div>
                        </div>
                    </div>
                </div>
                <!-- end right-->
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
 <%--   <script lang="javascript">        (function () { var pname = ((document.title != '') ? document.title : document.querySelector('h1').innerHTML); var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.src = '//live.vnpgroup.net/js/web_client_box.php?hash=0cf27cf31d5f926f429910a5e5e28f1b&data=eyJzc29faWQiOjQxOTI5ODksImhhc2giOiJmZGNlMzkwZmQ3M2M3ZmJjZDQ4Y2I5ZjViZDI5MGVhZCJ9&pname=' + pname; var s = document.getElementsByTagName('script'); s[0].parentNode.insertBefore(ga, s[0]); })();</script>
    --%>
    </form>
</body>
</html>
