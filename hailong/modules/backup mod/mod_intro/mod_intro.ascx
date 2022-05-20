<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_intro.ascx.cs" Inherits="modules_mod_intro_mod_intro" %>
<%@Import Namespace = "System.Data" %>
<%--<script type="text/javascript" src="<%= clsConfig.GetHostUrl() %>/js/fadeslideshow.js"></script>--%>

<script type="text/javascript">

var mygallery=new fadeSlideShow({
	wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
	dimensions: [720, 250], //width/height of gallery in pixels. Should reflect dimensions of largest image
	imagearray: [
		["images/ban.jpg"],
		
		["images/ban2.jpg"],
		
		["images/ban3.jpg"],
		
		["images/ban4.jpg"]//<--no trailing comma after very last image element!
	],
	displaymode: {type:'auto', pause:2500, cycles:0, wraparound:false},
	persist: false, //remember last viewed slide and recall within same session?
	fadeduration: 500, //transition duration (milliseconds)
	descreveal: "ondemand",
	togglerid: ""
})

</script>
<%
            DataTable dtInfo = clsDatabase.getDataTable("select TOP 1 * from tbl_siteinfo where FK_LangID = " + lang.getLangID());            
		 %>
<div class="flashbanner">
        <div class="rightbanner" id="fadeshow1" align="center">
        <div style="clear:both"></div>
        </div>
        <div class="leftbanner">
          <div class="padleft">
            <h3><%= lang.setLangValue("Why choose us", "Tại sao chọn chúng tôi")%> </h3>

            <%--<p class="introB" style="padding-bottom:0px;">
            <a href="<%= clsConfig.GetHostUrl() %>/0/intro.aspx"><%= clsInput.decodeStr(dtInfo.Rows[0]["TieudeGioithieu"].ToString()) %></a>
            </p>--%>

            <%= clsInput.decodeStr(dtInfo.Rows[0]["Gioithieu1"].ToString()) %>
            <!--<div class="more" style="text-align:right"><a href="<%= clsConfig.GetHostUrl() %>/0/intro.aspx"><%= lang.setLangValue("More", "Xem tiếp")%> &raquo;</a></div>-->
          </div>
        </div>
      </div>
      <div style="clear:both"></div>