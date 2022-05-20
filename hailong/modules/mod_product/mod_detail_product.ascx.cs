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

public partial class modules_mod_granite_mod_detail_granite : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnMuaNgay_Click(object sender, EventArgs e)
    {
        int idProduct = clsInput.getNumericInput("id", 0);
        DataTable dt = clsDatabase.getDataTable("select TOP 1 tbl_category_product.C_Name as CatName, tbl_product.* from tbl_category_product inner join tbl_product on tbl_category_product.PK_CategoryID = tbl_product.FK_CategoryID where tbl_category_product.FK_LangID = " + lang.getLangID() + " and tbl_product.PK_ProductID =" + idProduct);
        if (true)
        {

            double soluong = 0;
            double money = 0;
            double giaBan = 0;
            double giaKhuyenMai = 0;
            clsCart gh;
            if (Session["giohang"] != null)
            {
                //GioHang gh=new GioHang() ;
                gh = (clsCart)Session["giohang"];
            }
            else
            {
                gh = new clsCart();
            }
            soluong = 1;
            DataRow dr = dt.Rows[0];
            giaBan = dr["C_Price"] != null ? double.Parse(dr["C_Price"].ToString()) : 0;
            giaKhuyenMai = 0;
            gh.dienVaoBang(dr["PK_ProductID"].ToString(), dr["C_Name"].ToString(), "", dr["FK_CategoryID"].ToString(), giaBan, giaKhuyenMai, soluong, "", "", dr["C_Code"].ToString(), money);
            Session["giohang"] = gh;
            Session["tbl_gio_hang"] = gh.GetDataTable();
            DataTable tb = gh.GetDataTable();
            Response.Redirect("~/GioHang.aspx");

        }
    }
}
