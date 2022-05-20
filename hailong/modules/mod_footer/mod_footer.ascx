<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_footer.ascx.cs" Inherits="modules_mod_footer_mod_footer" %>
<%@Import Namespace = "System.Data" %>

<%
            DataTable dtInfo = clsDatabase.getDataTable("select TOP 1 Congty,Diachi,Dienthoai,Mobile from tbl_siteinfo where FK_LangID = " + lang.getLangID());            
		 %>

<div class="footer">
      <div class="padfooter">
        <div class="rightfooter">
          <p><img src="<%= clsConfig.GetHostUrl() %>/images/online.gif" width="16" height="16" /> <%= lang.setLangValue("User online", "Người đang online") %>: <span class="norB">
          <%= this.Application["visitors_online"].ToString() %>
          </span></p>
          <p><img src="<%= clsConfig.GetHostUrl() %>/images/thongke.gif" width="16" height="16" /> <%= lang.setLangValue("Number of visitors", "Số người truy cập") %>: <span class="norB">
          <%
                                clsDatabase.ExecuteQuery("update tbl_siteinfo set Counter = Counter+1 where FK_LangID = " + lang.getLangID());
                                DataTable dt = clsDatabase.getDataTable("select Counter from tbl_siteinfo where FK_LangID = " + lang.getLangID());
                                if (dt.Rows.Count > 0)
                                    Response.Write(dt.Rows[0]["Counter"].ToString());			                    				    				    
							 %>
          </span></p>
        </div>
        <p class="norB"> <%= clsInput.decodeStr(dtInfo.Rows[0]["Congty"].ToString()) %></p>
        <!--<%= lang.setLangValue("Product showrooms", "Cửa hàng giới thiệu sản phẩm") %>: <span class="norB"><%= lang.setLangValue("Stores marble exporter DUY MANH", "Cửa hàng đá hoa cương xuất khẩu DUY MẠNH") %></span><br />-->
        <%--<%= lang.setLangValue("Address", "Địa chỉ") %>:--%> 
        <%= clsInput.decodeStr(dtInfo.Rows[0]["Diachi"].ToString()) %><br />
        <%--<span>Tel/ Fax:</span> <%= clsInput.decodeStr(dtInfo.Rows[0]["Dienthoai"].ToString()) %>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; --%>
        
        <span>Hotline:</span> <%= clsInput.decodeStr(dtInfo.Rows[0]["Mobile"].ToString()) %></div>
    </div>

