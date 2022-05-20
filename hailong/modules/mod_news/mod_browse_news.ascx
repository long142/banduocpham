<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_browse_news.ascx.cs" Inherits="modules_news_browse_news" %>
<%@Import Namespace = "System.Data" %>

<div class="">
        <div class="blockright">
        <div class="guide">
       	  
       	  <%
              int intTabId = clsInput.getNumericInput("tabid",0);
              int intCatID = clsInput.getNumericInput("catid", 0);
              if (intCatID < 0)
                  Response.Redirect(clsConfig.GetHostUrl() + "/Default.aspx");          	       
       	   %>
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
       	  </div>
          <div class="tabright"> <span>
          <%
              string strCatName = "Default";
              DataTable dtCategoryName = clsDatabase.getDataTable("select C_Name from tbl_category_news where FK_LangID = " + lang.getLangID() + " and PK_CategoryID = " + intCatID);
              if (dtCategoryName.Rows.Count > 0)
              {
                  strCatName = dtCategoryName.Rows[0]["C_Name"].ToString();
                  Response.Write(dtCategoryName.Rows[0]["C_Name"].ToString());
              }
           %>
          </span> </div>
          
			<div class="contentright">
            	
		
            
            <div class="comment">
            	
               <div style="clear:both"></div>
               <div class="listcomment">
 <%
    //------------------------------	
             
    int intCurPage = 0;
    int intStartRecord = 0;
    int intPageSize = 6;
    //------------------------------ 

     
   //-------------------------------		    		    
    intCurPage = clsPaging.getCurPage();
    intStartRecord = clsPaging.getStartRecord(intCurPage, intPageSize);
    //------------------------------ 		    
    string strSqlCount = "select count(*) from tbl_news  where FK_LangID = " + lang.getLangID() + "  and tbl_news.C_Active = 1 and tbl_news.FK_CategoryID = " + intCatID;
    int intTotalPage = clsPaging.getTotalPage(strSqlCount, intPageSize);
    //string strParamPage = "page=" + Request.QueryString["page"] + "&mod=" + Request.QueryString["mod"] + "&key=" + strKey + "&catid=" + clsInput.getNumericInput("catid", 0);

    //========================================
    DataTable dtSub = clsDatabase.getDataTable("select tbl_news.* from tbl_news where FK_LangID = " + lang.getLangID() + "   and tbl_news.C_Active = 1 and tbl_news.FK_CategoryID =  " + intCatID + " order by tbl_news.C_Rank desc", intStartRecord, intPageSize);
    
    
    int j = 0;
    if (dtSub.Rows.Count == 1)
        Response.Redirect(clsConfig.GetHostUrl()+"/detail-news/"+ intTabId +"/"+ dtSub.Rows[j]["PK_NewsID"].ToString()+"/"+ clsFunction.RemoveUnicode(dtSub.Rows[j]["C_Name"].ToString())+".aspx");
    if (dtSub.Rows.Count > 0)
    {
        //for (j = 0; j < dtSub.Rows.Count; j++)
        for (j = 0; j < dtSub.Rows.Count; j++)
        {
	%>              	
                	
                	<div class="blockcomment">
                	<span class="norB"><a href="<%= clsConfig.GetHostUrl() %>/detail-news/<%= intTabId %>/<%= dtSub.Rows[j]["PK_NewsID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtSub.Rows[j]["C_Name"].ToString()) %>.aspx"><%= dtSub.Rows[j]["C_Name"].ToString() %></a></span>
					<p>
					<%
					    if(dtSub.Rows[j]["C_Img"].ToString() != "")
					    {
					 %>
					<img src="<%= clsConfig.GetHostUrl() %>/<%= dtSub.Rows[j]["C_Img"].ToString() %>" style="float:left; width:100px; padding-right:5px; padding-bottom:3px;" />
					<% } %>
					<%= clsInput.decodeStr(dtSub.Rows[j]["C_Des"].ToString())%>
					</p>
					<div style="clear:both"></div>
                </div>
   <% 
           }
       } 
        %>             	
                	
                	
               </div>
              
			  
			  
			  <div class="pages" align="center"> 
			  
			  <%
            string str = "";
        //int Pagesize = 10;
        //int intTotalPage = getPage(strTableName, intPagesize, strWhere);
        if (intTotalPage <= 1)
        {
            str = "";
        }
        else
        {
            int intGetP = clsInput.getNumericInput("p",0);
            //--------------------------------------------

            //str += "<a href='#'>Trang trước</a>";
            //--------------------------------------------    
            int intNowPage = intGetP;
            if (intNowPage == 0)
                intNowPage = 1;
            int intPerRecord = 100;
            int intPrePage = intNowPage - intPerRecord;
            if (intPrePage <= 0)
                intPrePage = 1;
            int intNexPage = intNowPage + intPerRecord;
            if (intNexPage > intTotalPage)
                intNexPage = intTotalPage;
            //for (int iPage = intPrePage; iPage <= intNexPage; iPage++)
            for (int iPage = intNexPage; iPage >= intPrePage; iPage--)
            {     
                //Drd1.Items.Add(i.ToString());
                if (intCurPage == iPage)
                    str = str + "<a href='#'>" + iPage.ToString() + "</a>";
                else
                {
                    str = str + "<a href='" + clsConfig.GetHostUrl() + "/category-p_" + iPage.ToString() + "/" + intTabId + "/" + intCatID + "/" + clsFunction.RemoveUnicode(strCatName) + ".aspx" + "'>" + iPage.ToString() + "</a>";
                }
            }
            //--------------------------------------------

            //str = str + "<a href='#'>Trang sau</a>";
            //--------------------------------------------
        }
        
        Response.Write(str);
					 %>
			 
			  </div>
			  
			  
			  
            </div>
            </div>
        </div>
        <!-- end blockright-->
      </div>
    
    