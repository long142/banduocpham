<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_detail_news.ascx.cs" Inherits="modules_mod_news_mod_detail_news" %>
<script language="javascript">

        function getW()

        {

            var theImg = document.getElementById('imgNewsDetail');

            //alert(theImg.width);
            return theImg.width;
            //alert('123');
        }

        
        
 </script>
<%@Import Namespace = "System.Data" %>
<%
    int intTabId = clsInput.getNumericInput("tabid",0);
    int intId = clsInput.getNumericInput("id",0);
    int intCatId = 0;
     %>
     
<%
            DataTable dtName = clsDatabase.getDataTable("select tbl_category_news.C_Name as CatName, tbl_news.* from tbl_news inner join tbl_category_news on tbl_news.FK_CategoryID = tbl_category_news.PK_CategoryID where tbl_news.PK_NewsID = " + intId);
            if (dtName.Rows.Count > 0)
            {
                intCatId = Convert.ToInt32(dtName.Rows[0]["FK_CategoryID"].ToString());
       	 %>     
     
<div class="" >
        <div class="blockright">
        
        <% if (intTabId == 1)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Company", "Công ty")%></a></div>
       	<% } %>
       	<% if (intTabId == 2)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Typical", "Công trình tiêu biểu")%></a></div>
       	<% } %>
       	<% if (intTabId == 3)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Rocks", "Các loại đá")%></a></div>
       	<% } %>
       	<% if (intTabId == 4)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Product", "Sản phẩm")%></a></div>
       	<% } %>
       	<% if (intTabId == 5)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Contact", "Liên hệ")%></a></div>
       	<% } %>
       	<% if (intTabId == 6)
           { %>
           <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Site map", "Cấu trúc site")%></a></div>
       	<% } %>
       	
          <div class="tabright"> <span><%= dtName.Rows[0]["CatName"].ToString()%></span> </div>
          
			<div class="contentright">
            	<h2><%= dtName.Rows[0]["C_Name"].ToString() %></h2>

 <%= clsInput.decodeStr(dtName.Rows[0]["C_des"].ToString()) %>
 <%= clsInput.decodeStr(dtName.Rows[0]["C_Content"].ToString()) %>

		<div class="share">
        	Chia sẻ: <a href="#"><img src="<%= clsConfig.GetHostUrl() %>/images/facebook.gif" width="14" height="14" /></a> <a href="#"><img src="<%= clsConfig.GetHostUrl() %>/images/twitter.gif" width="14" height="14" /></a> <a href="#"><img src="<%= clsConfig.GetHostUrl() %>/images/google.gif" width="14" height="14" /></a></div>
            
            <div class="comment">
            	<div class="titcomment">

               	<%--<img src="<%= clsConfig.GetHostUrl() %>/images/bubble_64.png" width="24"/><a href="<%= clsConfig.GetHostUrl() %>/5/contact.aspx"><%= lang.setLangValue("Contact us", "Liên hệ với chúng tôi")%> </a></div>
            	--%>
               <div style="clear:both"></div>
               
               <div class="tabright mt10"> <span><%= lang.setLangValue("Other news", "Các tin khác")%></span> </div>
            <div class="list_news mt10"> 
            <%
                DataTable dtOther = clsDatabase.getDataTable("select Top 5 PK_NewsID, C_Name from tbl_news where PK_NewsID < " + intId + " and FK_CategoryID = " + intCatId + " order by C_Rank desc");
                for(int iOther = 0; iOther < dtOther.Rows.Count; iOther++)
                {
             %>
            <a href="<%= clsConfig.GetHostUrl() %>/detail-news/<%= intTabId %>/<%= dtOther.Rows[iOther]["PK_NewsID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtOther.Rows[iOther]["C_Name"].ToString()) %>.aspx"><%= dtOther.Rows[iOther]["C_Name"].ToString() %></a>
             <% } %>
             </div>
            </div>
            </div>
        </div>

        </div>
        <!-- end blockright-->
      </div>

<% } %>      