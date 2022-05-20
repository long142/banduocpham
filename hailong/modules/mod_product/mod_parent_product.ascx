<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_parent_product.ascx.cs"
    Inherits="modules_mod_product_mod_parent_product" %>
<%@ Import Namespace="System.Data" %>
<%
    int intTabId = 4;

    string strCatName = "";
    int intCatID = clsInput.getNumericInput("catid", 0);
    DataTable dsSubCategory = clsDatabase.getDataTable("select * from tbl_category_product where FK_LangID = " + lang.getLangID() + " and FK_ParentID =" + intCatID + " order by C_Rank desc");
    
%>
<div class="">
    <div class="guide">
        <a href="#" class="norB">
            <%= lang.setLangValue("Home", "Trang chủ")%>
            &raquo;</a> <a href="#">
                <%= lang.setLangValue("product", "sản phẩm")%></a>
    </div>

    
    <%if (dsSubCategory.Rows.Count > 0)
          foreach (DataRow itemSubCategory in dsSubCategory.Rows)
          {
              DataTable dtSub = clsDatabase.getDataTable("select top 9 tbl_product.* from tbl_product where FK_LangID = " + lang.getLangID() + "   and tbl_product.C_Active = 1 and (tbl_product.FK_CategoryID = " + itemSubCategory["PK_CategoryID"].ToString() + ") order by tbl_product.C_Rank desc");
              if (dtSub.Rows.Count > 0)
              {
       %> 
    <div class="blockright">
        <div class="tabright">
            <span>
                
                <%= itemSubCategory["C_Name"].ToString()%>
                
            </span>
        </div>
        <div class="listitem">
            <ul>
                <%
                  //------------------------------	


                  //========================================



                  int j = 0;
                  if (dtSub.Rows.Count > 0)
                  {

                      for (j = 0; j < dtSub.Rows.Count; j++)
                      {
                %>
                <% if (dtSub.Rows[j]["C_Img"].ToString() != "")
                   {
                       if (clsFile.fileExists("~/" + dtSub.Rows[j]["C_Img"].ToString()))
                       {
                %>
                <li><a href="<%= clsConfig.GetHostUrl() %>/detail-product/<%= intTabId %>/<%= dtSub.Rows[j]["PK_ProductID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtSub.Rows[j]["C_Name"].ToString()) %>.aspx">
                   
                    <img src="<%= clsConfig.GetHostUrl() %>/<%= dtSub.Rows[j]["C_Img"].ToString() %>"
                        alt="" width="100" height="90" />
                        <%if (dtSub.Rows[j]["C_Name"].ToString().Length >= 23)
                          {%>
                    <%= dtSub.Rows[j]["C_Name"].ToString().Substring(0, 23)%>
                    <%}
                          else
                          { %>
                          <%= dtSub.Rows[j]["C_Name"].ToString()%>
                      <%} %>
                      </a>
                    <div style="font-weight: bold; padding-top: 10px">
                        <% =clsFunction.getNumberVN(dtSub.Rows[j]["C_Price"].ToString())%>
                        ₫
                    </div>
                    
                </li>
                <% }
                   } %>
                <% 
                      }
                  } 
                %>
            </ul>
            <div style="clear: both">
            </div>
            <div class="pages" align="center">
                <a  href="<%= clsConfig.GetHostUrl() %>/product/3/<%=itemSubCategory["PK_CategoryID"].ToString() %>/<%= clsFunction.RemoveUnicode(itemSubCategory["PK_CategoryID"].ToString()) %>.aspx" id="item2" >
                Xem tiếp
                </a> 
            </div>
            <div style="clear: both">
            </div>
        </div>
        <!-- end item-->
    </div>
    
    <%}
          } %>



    <!-- end blockright-->
</div>
