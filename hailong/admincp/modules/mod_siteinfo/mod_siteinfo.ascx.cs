using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class admincp_modules_mod_siteinfo_mod_siteinfo : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write("<br>" + this.Session["lang"].ToString());
        //Response.Write(this.Session["lang"].ToString());
        showData();
    }
    private void showData()
    {
        string strSql = "select TOP 1 * from tbl_siteinfo where FK_LangID = " + lang.getLangID();
        //Response.Write(strSql);
        string Counter = "";
        string Contact = "";
        string Footer = "";
        string Email = "";
        string Yahoo1 = "";
        string Yahoo2 = "";
        string Skype1 = "";
        string Skype2 = "";
        string CongTy = "";
        string Diachi = "";
        string Dienthoai = "";
        string Mobile = "";
        string TieudeGioithieu = "";
        string Gioithieu1 = "";
        string Gioithieu2 = "";

        DataTable dt = clsDatabase.getDataTable(strSql);
        if (dt.Rows.Count > 0)
        {
            Counter = dt.Rows[0]["Counter"].ToString();
            Contact = dt.Rows[0]["Contact"].ToString();
            Footer = dt.Rows[0]["Footer"].ToString();
            Email = dt.Rows[0]["Email"].ToString();
            Yahoo1 = dt.Rows[0]["Yahoo1"].ToString();
            Yahoo2 = dt.Rows[0]["Yahoo2"].ToString();
            Skype1 = dt.Rows[0]["Skype1"].ToString();
            Skype2 = dt.Rows[0]["Skype2"].ToString();
            CongTy = dt.Rows[0]["Congty"].ToString();
            Diachi = dt.Rows[0]["Diachi"].ToString();
            Dienthoai = dt.Rows[0]["Dienthoai"].ToString();
            Mobile = dt.Rows[0]["Mobile"].ToString();
            TieudeGioithieu = dt.Rows[0]["TieudeGioithieu"].ToString();
            Gioithieu1 = dt.Rows[0]["Gioithieu1"].ToString();
            Gioithieu2 = dt.Rows[0]["Gioithieu2"].ToString();
        }

        //===============================================================
        FCKeditor1.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor1.Config["AutoDetectLanguage"] = "false";
        FCKeditor1.Config["DefaultLanguage"] = "vi";
        FCKeditor1.Width = 900;
        FCKeditor1.Height = 350;
        //setup thame
        FCKeditor1.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================
        //===============================================================
        FCKeditor2.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor2.Config["AutoDetectLanguage"] = "false";
        FCKeditor2.Config["DefaultLanguage"] = "vi";
        FCKeditor2.Width = 900;
        FCKeditor2.Height = 350;
        //setup thame
        FCKeditor2.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================
        //===============================================================
        FCKeditor3.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor3.Config["AutoDetectLanguage"] = "false";
        FCKeditor3.Config["DefaultLanguage"] = "vi";
        FCKeditor3.Width = 900;
        FCKeditor3.Height = 350;
        //setup thame
        FCKeditor1.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================
        
        if (Page.IsPostBack)
            return;

        // Set the startup editor value.
        FCKeditor1.Value = clsInput.decodeStr(Contact.ToString());
        
        TxtEmail.Text = clsInput.decodeStr(Email.ToString());
        TxtCounter.Text = Counter.ToString();

        FCKeditor2.Value = clsInput.decodeStr(Gioithieu1.ToString());
        FCKeditor3.Value = clsInput.decodeStr(Gioithieu2.ToString());
        TxtTieudeGioithieu.Text = clsInput.decodeStr(TieudeGioithieu.ToString());
        txtCongty.Text = clsInput.decodeStr(CongTy.ToString());
        txtDiachi.Text = clsInput.decodeStr(Diachi.ToString());
        txtDienthoai.Text = clsInput.decodeStr(Dienthoai.ToString());
        txtMobile.Text = clsInput.decodeStr(Mobile.ToString());

        TxtYahoo1.Text = clsInput.decodeStr(Yahoo1.ToString());
        TxtYahoo2.Text = clsInput.decodeStr(Yahoo2.ToString());
        TxtSkype1.Text = clsInput.decodeStr(Skype1.ToString());
        TxtSkype2.Text = clsInput.decodeStr(Skype2.ToString());

    }

    protected void BtnSubmit_ServerClick(object sender, EventArgs e)
    {
        // For sample purposes, print the editor value at the bottom of the
        // page. Note that we are encoding the value, so it will be printed as
        // is, intead of rendering it.        
        string Contact = clsInput.encodeStr(FCKeditor1.Value);
        string TieudeGioithieu = clsInput.encodeStr(TxtTieudeGioithieu.Text);
        string Gioithieu1 = clsInput.encodeStr(FCKeditor2.Value);
        string Gioithieu2 = clsInput.encodeStr(FCKeditor3.Value);
        
        string Email = clsInput.encodeStr(TxtEmail.Text);
        string Yahoo1 = clsInput.encodeStr(TxtYahoo1.Text);
        string Yahoo2 = clsInput.encodeStr(TxtYahoo2.Text);
        string Skype1 = clsInput.encodeStr(TxtSkype1.Text);
        string Skype2 = clsInput.encodeStr(TxtSkype2.Text);
        string CongTy = clsInput.encodeStr(txtCongty.Text);
        string Diachi = clsInput.encodeStr(txtDiachi.Text);
        string Dienthoai = clsInput.encodeStr(txtDienthoai.Text);
        string Mobile = clsInput.encodeStr(txtMobile.Text);


        //An thuoc tinh thong bao loi
        block_error.Text = "";
        if (TxtCounter.Text.Trim() == "")
            clsErr.setErr("Lượt truy cập", "Bạn hãy nhập vào lượt truy cập");
        if (Email == "")
            clsErr.setErr("Email", "Bạn hãy nhập email quản trị");
        if (Contact == "")
            clsErr.setErr("Liên hệ", "Bạn hãy nhập thông tin liên hệ");
        
        //Ket xuat loi
        if (clsErr.checkErr())
        {
            block_error.Text = clsErr.displayErr();
        }
        else
        {
            ulong Counter = Convert.ToUInt64(TxtCounter.Text);
            string strSql = "update tbl_siteinfo set Counter = " + Counter + " , Contact = N'" + Contact + "', TieudeGioithieu = N'" + TieudeGioithieu + "', Gioithieu1 = N'" + Gioithieu1 + "', Gioithieu2 = N'" + Gioithieu2 + "', Congty = N'" + CongTy + "', Diachi = N'" + Diachi + "', Dienthoai = N'" + Dienthoai + "', Mobile = N'" + Mobile + "', Yahoo1 = N'" + Yahoo1 + "', Yahoo2 = N'" + Yahoo2 + "', Skype1 = N'" + Skype1 + "', Skype2 = N'" + Skype2 + "',Email='" + Email + "' where FK_LangID = " + lang.getLangID();
            //Response.Write(strSql);
            clsDatabase.ExecuteQuery(strSql);
            showData();
        }
        // Make the posted data block visible.
        //PostedDataBlock.Visible = true;
        // PostedAlertBlock.Visible = true;
        //==================================================
        //Response.Redirect("Default.aspx?page=siteinfo&mod=siteinfo");
        //==================================================
    } 
}
