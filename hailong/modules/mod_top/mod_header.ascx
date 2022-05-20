<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_header.ascx.cs" Inherits="modules_mod_top_mod_header" %>
<%@ Import Namespace="System.Data" %>
<%
    int intTabId = clsInput.getNumericInput("tabid", 0);
    
    
%>
<!-- begin menu -->
<div class="top">
    <div class="language">
        <!--
<a href="<%= clsConfig.GetHostUrl() %>/Default.aspx?lang=1"><img src="<%= clsConfig.GetHostUrl() %>/images/vn.jpg" width="16" height="11" /></a> 
<a href="<%= clsConfig.GetHostUrl() %>/Default.aspx?lang=2"><img src="<%= clsConfig.GetHostUrl() %>/images/gb.jpg" width="16" height="11" /></a>
-->
    </div>
    <a href="#">
        <img src="<%= clsConfig.GetHostUrl() %>/images/logo.png" width="123" height="113"
            class="logo" /></a>
    <%--<% if (lang.getLangID() == 1) { %>
      <img src="<%= clsConfig.GetHostUrl() %>/images/slogaj.png" width="381" height="76" /> 
      <% } else { %>
      <img src="<%= clsConfig.GetHostUrl() %>/images/slogan_e.png" width="381" height="76" />
      <% } %>--%>
    <div class="menu1">
        <%
            DataTable dsMenuNgang = clsDatabase.getDataTable("select * from tbl_menu where  C_Active = 1 and FK_ParentID=0 and C_BackEnd=0 and FK_LangID = " + lang.getLangID() + "  order by C_Rank desc");
        %>
        <%if (dsMenuNgang.Rows.Count > 0)
          {
        %>
        <ul>
            <%
              foreach (DataRow item in dsMenuNgang.Rows)
              {%>
            <li>
                <%--<a href="<%= clsConfig.GetHostUrl() %>/Default.aspx" <% if(intTabId == 0) { %> class="active" <% } %>><%= item["C_Name"].ToString()%></a> --%>
                <%if (!item["C_Url"].ToString().Equals(""))
                  {%>
                <a href="<%= clsConfig.GetHostUrl() %>/<%= item["C_Url"] !=null ? item["C_Url"].ToString():"" %>/<%= clsFunction.RemoveUnicode(item["C_Name"].ToString()) %>.aspx"
                    <% if(intTabId == 0) { %> class="active" <% } %>>
                    <%= item["C_Name"].ToString()%>
                </a>
                <%}
                  else
                  { %>
                <a href="<%= clsConfig.GetHostUrl() %>/Default.aspx" <% if(intTabId == 0) { %> class="active" <% } %> >
                    <%= item["C_Name"].ToString()%>
                </a>
                <%} %>
                <%
                  DataTable dsSubMenu = clsDatabase.getDataTable("select * from tbl_menu where FK_LangID = " + lang.getLangID() + " and C_BackEnd = 0 and C_Active = 1 and FK_ParentID=" + item["PK_MenuID"].ToString() + " order by C_Rank desc");
                  if (dsSubMenu.Rows.Count > 0)
                  { %>
                <ul class="dropdown">
                    <%
                      foreach (DataRow itemSubMenu in dsSubMenu.Rows)
                      {%>
                    <li>
                        
                        <%if (!itemSubMenu["C_Url"].ToString().Equals(""))
                          {%>
                        <a href="<%= clsConfig.GetHostUrl() %>/<%= itemSubMenu["C_Url"] !=null ? itemSubMenu["C_Url"].ToString():"" %>/<%= clsFunction.RemoveUnicode(itemSubMenu["C_Name"].ToString()) %>.aspx"
                            <% if(intTabId == 0) { %> class="active" <% } %>>
                            <%= itemSubMenu["C_Name"].ToString()%>
                        </a>
                        <%}
                          else
                          { %>
                            <a href="<%= clsConfig.GetHostUrl() %>/Default.aspx" <% if(intTabId == 0) { %> class="active" <% } %>><%= itemSubMenu["C_Name"].ToString()%></a> 
                        <%} %>
                        </li>
                    <%}%>
                </ul>
                <% }%>
            </li>
            <%}%>
        </ul>
        <%}
        %>
        <%--
      <a href="<%= clsConfig.GetHostUrl() %>/Default.aspx" <% if(intTabId == 0) { %> class="active" <% } %>><%= lang.setLangValue("HOME", "TRANG CHỦ")%></a> 
      
      <a <% if(intTabId == 1) { %> class="active" <% } %> 
      href="<%= clsConfig.GetHostUrl() %>/detail-news/1/193/<%= clsFunction.RemoveUnicode("gioithieu") %>.aspx" 
      id="item3" rel="subcontent3"><%= lang.setLangValue("COMPANY", "CÔNG TY")%>
      </a> 

      <% if(lang.getLangID() == 1) { %>
      <a <% if(intTabId == 2) { %> class="active" <% } %> href="<%= clsConfig.GetHostUrl() %>/product/2/44/<%= clsFunction.RemoveUnicode(dtCacChuyenMuc.Select("PK_CategoryID=" + 44)[0]["C_Name"].ToString()) %>.aspx">
      <% } %>
      <% if(lang.getLangID() == 2) { %>
      <a <% if(intTabId == 2) { %> class="active" <% } %> href="#">
      <% } %><%= lang.setLangValue("ALUMINUM DOOR XINGFA", "CỬA NHÔM XINGFA")%></a> 
      <a <% if(intTabId == 3) { %> class="active" <% } %> href="<%= clsConfig.GetHostUrl() %>/product/3/43/<%= clsFunction.RemoveUnicode(dtCacChuyenMuc.Select("PK_CategoryID=" + 43)[0]["C_Name"].ToString()) %>.aspx" id="item2" ><%= lang.setLangValue("Steel core plastic doors", "CỬA NHỰA LÕI THÉP")%></a> 
      <a <% if(intTabId == 4) { %> class="active" <% } %> href="<%= clsConfig.GetHostUrl() %>/product/4/42/<%= clsFunction.RemoveUnicode(dtCacChuyenMuc.Select("PK_CategoryID=" + 42)[0]["C_Name"].ToString()) %>.aspx" id="item" ><%= lang.setLangValue("sliding doors sliding doors", "CỬA CUỐN - CỬA KÉO")%></a> 
      <a id="item4"  <% if(intTabId == 5) { %> class="active" <% } %> href="<%= clsConfig.GetHostUrl() %>/product/5/41/<%= clsFunction.RemoveUnicode(dtCacChuyenMuc.Select("PK_CategoryID=" + 41)[0]["C_Name"].ToString()) %>.aspx"><%= lang.setLangValue("glass staircase railing", "LAN CAN - KÍNH CẦU THANG")%></a> 
        --%>
    </div>
</div>
<!-- end top-->
<%--<div class="submenu" id="subcontent3" style="position:absolute; visibility: hidden; z-index:2020;">
    	<div class="padmenu">
    	<%
        DataTable dtNhaxuong = clsDatabase.getDataTable("select * from tbl_category_news where C_MenuNgang = 1 and FK_LangID = " + lang.getLangID() + " and (FK_ParentID = 14 or FK_ParentID = 23 ) order by C_Rank desc");
        for(int iNhaxuong = 0; iNhaxuong < dtNhaxuong.Rows.Count; iNhaxuong++)
        {
         %>
   	<a href="<%= clsConfig.GetHostUrl() %>/category/1/<%= dtNhaxuong.Rows[iNhaxuong]["PK_CategoryID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtNhaxuong.Rows[iNhaxuong]["C_Name"].ToString()) %>.aspx"><%= dtNhaxuong.Rows[iNhaxuong]["C_Name"].ToString() %></a> 
   	    <% } %>
   	</div></div>--%>
<!-- end submenu-->
<script type="text/javascript">
    //Call dropdowncontent.init("anchorID", "positionString", glideduration, "revealBehavior") at the end of the page:
    dropdowncontent.init("item", "right-bottom", 500, "mouseover")
    dropdowncontent.init("item2", "right-bottom", 500, "mouseover")
    dropdowncontent.init("item3", "right-bottom", 500, "mouseover")
    dropdowncontent.init("item4", "right-bottom", 500, "mouseover")
</script>
<!-- end menu -->
