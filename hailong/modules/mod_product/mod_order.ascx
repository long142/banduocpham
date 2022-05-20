<%@ Control Language="C#" AutoEventWireup="true" CodeFile="mod_order.ascx.cs" Inherits="modules_mod_product_mod_order" %>

<%@Import Namespace = "System.Data" %>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
<script type="text/javascript" src="<%= clsConfig.GetHostUrl() %>/js/dropdowncontent.js"></script>
<script type="text/javascript">


function ValidateEmailAddress(str) {

		var at="@"
		var dot="."
		var lat=str.indexOf(at)
		var lstr=str.length
		var ldot=str.indexOf(dot)
		if (str.indexOf(at)==-1){
		   alert("Email không hợp lệ")
		   return false
		}

		if (str.indexOf(at)==-1 || str.indexOf(at)==0 || str.indexOf(at)==lstr){
		   alert("Email không hợp lệ")
		   return false
		}

		if (str.indexOf(dot)==-1 || str.indexOf(dot)==0 || str.indexOf(dot)==lstr){
		    alert("Email không hợp lệ")
		    return false
		}

		 if (str.indexOf(at,(lat+1))!=-1){
		    alert("Email không hợp lệ")
		    return false
		 }

		 if (str.substring(lat-1,lat)==dot || str.substring(lat+1,lat+2)==dot){
		    alert("Email không hợp lệ")
		    return false
		 }

		 if (str.indexOf(dot,(lat+2))==-1){
		    alert("Email không hợp lệ")
		    return false
		 }
		
		 if (str.indexOf(" ")!=-1){
		    alert("Email không hợp lệ")
		    return false
		 }
 		 return true					
	}

function checkFormReg()
{

    if(document.getElementById('<%= txtHoten.ClientID %>').value =='')
    {
        
        alert("<%= lang.setLangValue("Please input your fullname","Bạn hãy nhập vào họ tên") %>");
        document.getElementById('<%= txtHoten.ClientID %>').focus();
        return false;
    }
    /*
    if(document.frmContact.txtPhone.value == "")
    {
        alert("Bạn hãy nhập vào điện thoại");
        document.frmContact.txtPhone.focus();
        return false;
    }
    */
    if(document.getElementById('<%= txtHoten.ClientID %>').value =='')
    {
        alert("<%= lang.setLangValue("Please input your name","Bạn hãy nhập vào họ tên") %>");
        document.getElementById('<%= txtHoten.ClientID %>').focus();
        return false;
    }
    
//    if(ValidateEmailAddress(document.getElementById('<%= txtEmail.ClientID %>').value) == false)
//        return false;
    /*
    if(document.frmContact.txtAddress.value == "")
    {
        alert("Bạn hãy nhập vào địa chỉ");
        document.frmContact.txtAddress.focus();
        return false;
    }
    */
    if(document.getElementById('<%= txtContent.ClientID %>').value =='')
    {
        alert("<%= lang.setLangValue("Please input your content","Bạn hãy nhập vào nội dung") %>");
        document.getElementById('<%= txtContent.ClientID %>').focus();
        return false;
    }
//    if(document.frmContact.txtImgVerifyCode.value == "")
//    {
//        alert("<%= lang.setLangValue("Please input your captcha","Bạn hãy nhập vào mã xác thực") %>");
//        document.frmContact.txtImgVerifyCode.focus();
//        return false;
//    }
    return true;
}
</script>

<div class="">
        <div class="blockright">
        <div class="guide">
       	  <a href="#" class="norB"><%= lang.setLangValue("Home", "Trang chủ")%> &raquo;</a> <a href="#"><%= lang.setLangValue("Product", "sản phẩm")%></a></div>
          
			<div class="contentright">

            	
                
          <!-- end item-->
          <div style="color:Red;font-weight:bold;font-size:12pt">
          Mua sản phẩm
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <asp:Label ID="block_error" runat="server" ></asp:Label>  
          </div>               
<div class="formcontact fl" >
  	<ul>
    	<li class="l1"><%= lang.setLangValue("Full Name","Họ tên") %></li>
        <li class="l2"><asp:TextBox ID="txtHoten" runat="server" Width="100%"></asp:TextBox></li>
        <li class="l1"><%= lang.setLangValue("Phone","Điện thoại") %></li>
        <li class="l2"><asp:TextBox ID="txtPhone" runat="server" Width="100%"></asp:TextBox></li>
        <li class="l1"><%= lang.setLangValue("Email","Email") %></li>
        <li class="l2"><asp:TextBox ID="txtEmail" runat="server" Width="100%"></asp:TextBox></li>
        <li class="l1"><%= lang.setLangValue("Address","Địa chỉ") %></li>
        <li class="l2"><asp:TextBox ID="txtAddress" runat="server" Width="100%"></asp:TextBox></li>
         <li class="l1"><%= lang.setLangValue("Content","Nội dung") %></li>
        <li class="l2"><asp:TextBox ID="txtContent" TextMode="MultiLine" runat="server" Height="200" Width="100%"></asp:TextBox></li>
         <li class="l1">&nbsp;</li>
        <li class="l2">
        <div class="buy_item">
        <a id="A1" href="#" runat="server" onclick="return checkFormReg();" onserverclick="btnSubmit_Click"  class="btn-buy">Gửi yêu cầu</a> 
        <a 
        <%--href="<%= clsConfig.GetHostUrl() %>/buy-product/<%= intTabId %>/<%= dtCatName.Rows[0]["PK_ProductID"].ToString() %>/<%= clsFunction.RemoveUnicode(dtCatName.Rows[0]["C_Name"].ToString()) %>.aspx" --%>
        class="btn-buy">Xoá</a>

        </div>
        </li>
    </ul>
    
     
  </div>
  <div style="clear:both"></div>


			</div>
        </div>
        <!-- end blockright-->
      </div>



