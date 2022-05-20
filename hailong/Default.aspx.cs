using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page 
{
    public string strSiteHome = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Write(Request.Url.Host);
        
        if ((this.Session["fron_login"] == null) || ( Convert.ToBoolean(this.Session["fron_login"]) != true))
        {
            this.Session["fron_login"] = true;
            Response.Redirect(clsConfig.GetHostUrl() + "/default.aspx");
        }
        string strHost = Request.Url.Host;
        if ((strHost == "cuanhuaiwindow.com" || strHost == "www.cuanhuaiwindow.com") && Convert.ToBoolean(this.Session["isWeb"]) == false)
        {
            this.Session["isWeb"] = true;
            Response.Redirect(clsConfig.GetHostUrl() + "/7/iwindow.aspx");
        }
        if ((strHost == "cuanhuaiwindow.com" || strHost == "www.cuanhuaiwindow.com"))
        {
            //inc_intro.Controls.Add(LoadControl("~/modules/mod_intro/mod_intro_iw.ascx"));
        }
        //Response.Write(strHost);

        string strMod = clsInput.getStringInput("mod", 0);
        string strPage = clsInput.getStringInput("page", 0);

        inc_header.Controls.Add(LoadControl("~/modules/mod_top/mod_header.ascx"));
        inc_footer.Controls.Add(LoadControl("~/modules/mod_footer/mod_footer.ascx"));
        
        string loadPage = "~/modules/mod_" + strMod + "/mod_" + strPage + ".ascx";
        //Response.Write(loadPage);
        if (clsFile.fileExists(loadPage))
            inc_content.Controls.Add(LoadControl(loadPage));
        else
        {
            //if ((strHost == "dahoacuonghoanglong.com" || strHost == "www.dahoacuonghoanglong.com"))
                inc_intro.Controls.Add(LoadControl("~/modules/mod_intro/mod_intro.ascx"));
            inc_content.Controls.Add(LoadControl("~/modules/mod_home/mod_home.ascx"));
                strSiteHome = " home";
        }
    
      }
    
}