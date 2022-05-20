<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_intro.ascx.cs" Inherits="modules_mod_intro_mod_intro" %>
<%@Import Namespace = "System.Data" %>

<%--<script type="text/javascript">

    var mygallery = new fadeSlideShow({
        wrapperid: "fadeshow1", //ID of blank DIV on page to house Slideshow
        dimensions: [720, 250], //width/height of gallery in pixels. Should reflect dimensions of largest image
        imagearray: [
		["images/ban.jpg"],

		["images/ban2.jpg"],

		["images/ban3.jpg"],

		["images/ban4.jpg"]//<--no trailing comma after very last image element!
	],
        displaymode: { type: 'auto', pause: 2500, cycles: 0, wraparound: false },
        persist: false, //remember last viewed slide and recall within same session?
        fadeduration: 500, //transition duration (milliseconds)
        descreveal: "ondemand",
        togglerid: ""
    })

</script>--%>



<%
            DataTable dtInfo = clsDatabase.getDataTable("select TOP 1 * from tbl_siteinfo where FK_LangID = " + lang.getLangID());            
		 %>





         <div class="flashbanner">
        <div class="rightbanner" id="fadeshow1" align="right">
        <%
              DataTable dtSlideHeader = clsDatabase.getDataTable("select * from tbl_slide where FK_LangID = " + lang.getLangID() + " and FK_CategoryID= 1  order by C_Rank desc");
               %>
               <%
                   if (dtSlideHeader.Rows.Count > 0)
                   {
                       foreach (DataRow itemSlideHeader in dtSlideHeader.Rows)
                       {
                           
                       
                    %>
        <img class="mySlides" src="<%=clsConfig.GetHostUrl() %>/<%=itemSlideHeader["C_Img"].ToString() %>" alt="" />
        

        <%}
                   }%>
        <script type="text/javascript">
            var myIndex = 0;
            carousel();

            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) { myIndex = 1 }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 2000);
            }
</script>
   
        <div style="clear:both"></div>
        </div>
       
        <div class="leftbanner">
          <div class="padleft">
            <h3><%= lang.setLangValue("Why choose us", "Tại sao chọn chúng tôi")%> </h3>

            

            <%= clsInput.decodeStr(dtInfo.Rows[0]["Gioithieu1"].ToString()) %>
            
          </div>
        </div>
         
      </div>



<%--<div class="flashbanner">
        <div class="rightbanner" id="fadeshow1" align="right">
        <div style="clear:both"></div>
        </div>
        <div class="leftbanner">
          <div class="padleft">
            <h3><%= lang.setLangValue("Why choose us", "Tại sao chọn chúng tôi")%> </h3>

            <%= clsInput.decodeStr(dtInfo.Rows[0]["Gioithieu1"].ToString()) %>
            
          </div>
        </div>
      </div>--%>





      <div style="clear:both"></div>