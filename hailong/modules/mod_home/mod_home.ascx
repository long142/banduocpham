<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_home.ascx.cs" Inherits="modules_mod_home_mod_home" %>
<%@ Import Namespace="System.Data" %>
<script language="javascript">
    function search_list_Granite(PK_GranitID) {
        key_search_List_Granite('ajax_box_granite.aspx?catid=' + PK_GranitID);
        //alert(PK_GranitID);
        return false;
    }
    function search_list_Product(PK_ProductID) {
        key_search_List_Product('ajax_box_product.aspx?catid=' + PK_ProductID);
        //alert(PK_GranitID);
        return false;
    }
</script>
<script src="js/ShowAjax.js"></script>
<div class="">
<%
    
    int intTabId = 4;
    string strPageSize = " top 6 ";
    DataTable dtCacChuyenMuc = clsDatabase.getDataTable("Select * from tbl_category_news");

    string strPK_CategoryID = "44";
    //get ds tin chuyen muc Cong ty
    DataTable dsTinChuyenMucCongTy = clsDatabase.getDataTable("select TOP 10 * from tbl_news where FK_LangID = " + lang.getLangID() + " and C_Active = 1 and FK_CategoryID=" + strPK_CategoryID + " order by C_Rank desc");

    string str = "";
    
     %>

     <%if(dsTinChuyenMucCongTy.Rows.Count>0)
           foreach (DataRow item in dsTinChuyenMucCongTy.Rows)
           {
               
           %>
    <div class="blockright">
          <div class="tabright"> <span>
         <%=item["C_Name"].ToString()%>
          </span> </div>


          <div class="listitem">
            
            	

 <%--<%= clsInput.decodeStr(item["C_des"].ToString())%>--%>
 <%= clsInput.decodeStr(item["C_Content"].ToString())%>

            
            <div style="clear:both"></div>
          </div>



          <!-- end item-->
        </div>
        <!-- end blockright-->
        <%} %>
    
 
</div>
