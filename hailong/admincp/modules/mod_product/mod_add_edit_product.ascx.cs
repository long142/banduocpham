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

public partial class admincp_modules_mod_product_mod_add_edit_product : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string strDo = clsInput.getStringInput("do", 0);
        int intId = clsInput.getNumericInput("id", 0);

        if (strDo == "edit" && intId > 0)
        {
            PnAdd.Visible = false;
            PnEdit.Visible = true;
            if (!Page.IsPostBack)
                edit_news(intId);
        }
        else if (strDo == "add")
        {
            PnAdd.Visible = true;
            PnEdit.Visible = false;
            if (!Page.IsPostBack)
                add_news();
        }
        else
        {
            //Hien thi thong bao loi, khong thay tac vu yeu cau
            //==================================================
            //Display Msg
            clsConfig.redirectUrl("Default.aspx?page=category_news&mod=news");
            //==================================================
        }

    }


    private void edit_news(int intID)
    {

        DataTable dt = clsDatabase.getDataTable("select * from tbl_product where PK_ProductID = " + intID);
        string strName = "";
        int intCategoryID = 0;
        string strImg = "";
        string strDes = "";
        string strCode = "";
        string strPrice = "";
        int intCheckHot = 0;
        if (dt.Rows.Count > 0)
        {
            strName = clsInput.decodeStr(dt.Rows[0]["C_Name"].ToString());
            strDes = clsInput.decodeStr(dt.Rows[0]["C_Des"].ToString());
            strCode = clsInput.decodeStr(dt.Rows[0]["C_Code"].ToString());
            strPrice = clsInput.decodeStr(dt.Rows[0]["C_Price"].ToString());
            intCheckHot = Convert.ToInt16(dt.Rows[0]["C_Hot"]);

            strImg = dt.Rows[0]["C_Img"].ToString();
            intCategoryID = Convert.ToInt16(dt.Rows[0]["FK_CategoryID"]);
            //Kiem tra viec xoa anh
            string strAct = clsInput.getStringInput("act", 0);
            if (strAct == "delImg")
            {
                clsDatabase.ExecuteQuery("update tbl_product set C_Img='' where PK_ProductID = " + intID);
                if (clsFile.fileExists("../" + dt.Rows[0]["C_Img"].ToString()))
                    clsFile.fileDelete("../" + dt.Rows[0]["C_Img"].ToString());
                Response.Redirect("Default.aspx?page=add_edit_product&mod=product&do=edit&id=" + intID);
            }
        }


        //===============================================================
        if (strImg != "")
        {
            PnImg.Visible = true;
            LblImg.Text = "<img src=../" + strImg + " width='150'>";
        }



        //Dropdown
        DataTable dtCategory = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID=0 and FK_LangID = " + lang.getLangID() + "  order by C_Rank desc");
        DrdCategory.Items.Clear();
        int intSelected = 0;
        
        for (int i = 0; i < dtCategory.Rows.Count; i++)
        {
            DrdCategory.Items.Add(new ListItem(dtCategory.Rows[i]["C_Name"].ToString(), dtCategory.Rows[i]["PK_CategoryID"].ToString()));
            if (Convert.ToInt16(dtCategory.Rows[i]["PK_CategoryID"]) == intCategoryID)
            {
                DrdCategory.SelectedIndex = intSelected;
            }
            intSelected++;

            //
            DataTable dtCategorySub = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID = " + dtCategory.Rows[i]["PK_CategoryID"].ToString() + " AND FK_LangID = " + lang.getLangID() + " order by C_Rank desc");

            //if (Convert.ToInt32(dtCategory.Rows[i]["PK_CategoryID"].ToString()) == intCat)
            //    DrdCategory.SelectedIndex = intSelected;

            //intSelected++;

            if (dtCategorySub.Rows.Count > 0)
            {
                for (int j = 0; j < dtCategorySub.Rows.Count; j++)
                {
                    DrdCategory.Items.Add(new ListItem(Server.HtmlDecode("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;") + dtCategorySub.Rows[j]["C_Name"].ToString(), dtCategorySub.Rows[j]["PK_CategoryID"].ToString()));
                    if (Convert.ToInt32(dtCategorySub.Rows[j]["PK_CategoryID"].ToString()) == intCategoryID)
                        DrdCategory.SelectedIndex = intSelected;
                    intSelected++;
                }
            }

            //

        }

        if (Page.IsPostBack)
            return;



        //===============================================================
        FCKeditor1.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor1.Config["AutoDetectLanguage"] = "false";
        FCKeditor1.Config["DefaultLanguage"] = "vi";
        FCKeditor1.Width = 900;
        FCKeditor1.Height = 250;
        //setup thame
        FCKeditor1.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================


        // Set the startup editor value.
        txtName.Text = strName;
        FCKeditor1.Value = strDes;
        lblCode.Text = strCode;
        txtPrice.Text = strPrice;

        if (intCheckHot == 1)
        {
            ChkHot.Checked = true;
        }

        //==========================================
    }

    private void add_news()
    {

        string strName = "";



        if (Page.IsPostBack)
            return;

        //Dropdown
        

        DataTable dtCategory = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID=0 and FK_LangID = " + lang.getLangID() + " order by C_Rank desc");
        DrdCategory.Items.Clear();

        for (int i = 0; i < dtCategory.Rows.Count; i++)
        {

            DrdCategory.Items.Add(new ListItem(dtCategory.Rows[i]["C_Name"].ToString(), dtCategory.Rows[i]["PK_CategoryID"].ToString()));
            //
            DataTable dtCategorySub = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID = " + dtCategory.Rows[i]["PK_CategoryID"].ToString() + " AND FK_LangID = " + lang.getLangID() + " order by C_Rank desc");

           

            if (dtCategorySub.Rows.Count > 0)
            {
                for (int j = 0; j < dtCategorySub.Rows.Count; j++)
                {
                    DrdCategory.Items.Add(new ListItem(Server.HtmlDecode("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;") + dtCategorySub.Rows[j]["C_Name"].ToString(), dtCategorySub.Rows[j]["PK_CategoryID"].ToString()));
                    
                }
            }

            //

        }

        //===============================================================
        FCKeditor1.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor1.Config["AutoDetectLanguage"] = "false";
        FCKeditor1.Config["DefaultLanguage"] = "vi";
        FCKeditor1.Width = 900;
        FCKeditor1.Height = 250;
        //setup thame
        FCKeditor1.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================

        // Set the startup editor value.
        txtName.Text = strName;
        int maxCode = 0;
        DataTable dsMaxCode = clsDatabase.getDataTable("Select Max(C_Code) from tbl_product");
        if (dsMaxCode.Rows.Count > 0 && !dsMaxCode.Rows[0][0].ToString().Equals("")) maxCode = int.Parse(dsMaxCode.Rows[0][0].ToString());
        if (maxCode == 0) maxCode = 81920000;
        else
        {
            if (maxCode < 81920000) maxCode = 81920000;
        }
        maxCode = maxCode + 1;
        lblCode.Text = maxCode.ToString();

        //==========================================
    }

    protected void BtnSubmit_ServerClick(object sender, EventArgs e)
    {
        //Khoi tao cac gia tri        
        string strName = clsInput.encodeStr(txtName.Text);
        int intCategoryID = Convert.ToInt32(DrdCategory.Text.ToString());
        string strImageURL = "";
        string strDes = clsInput.encodeStr(FCKeditor1.Value);
        string strCode = clsInput.encodeStr(lblCode.Text);
        string strPrice = clsInput.encodeStr(txtPrice.Text);
        int intCheckHot = 0;
        if (ChkHot.Checked == true)
            intCheckHot = 1;
        //====================================================
        //Kiem tra loi
        //An thuoc tinh thong bao loi
        block_error.Text = "";
        if (strName == "")
            clsErr.setErr("Tiêu đề", "Bạn hãy nhập vào tiêu đề");

        int n;
        bool isNumeric = int.TryParse(strPrice, out n);
        if (!isNumeric)
            clsErr.setErr("Giá sản phẩm","Giá sản phẩm phải là số");

        if (uploadFile.PostedFile.ContentLength > 0)
        {
            if (clsFile.checkImagesUploadSize(uploadFile) == false)
                clsErr.setErr("Dung lượng ảnh", "Ảnh có dung lượng quá lớn, bạn chỉ được phép upload ảnh <=1Mb");
            if (clsFile.checkImagesUploadType(uploadFile) == false)
                clsErr.setErr("Định dạng ảnh", "Bạn chỉ được phép upload ảnh có định dạng .gif, .jpg, .png");
        }

        //Ket xuat loi
        if (clsErr.checkErr())
        {
            block_error.Text = clsErr.displayErr();
        }
        else
        {
            try
            {

                strImageURL = clsFile.saveImages(uploadFile, "product");
                string strSql = "insert into tbl_product(C_Name,C_Des, C_Img, FK_CategoryID, FK_LangID, C_Active, C_Code, C_Price, C_Create, C_Hot) values (N'" + strName + "',N'" + strDes + "',N'" + strImageURL + "'," + intCategoryID + "," + lang.getLangID() + ",1," + strCode + "," + strPrice + ",CURRENT_TIMESTAMP,"+intCheckHot.ToString()+")";

                clsDatabase.ExecuteQuery(strSql);
                int intInsertRecord = clsDatabase.getInsertID("tbl_product", "PK_ProductID");
                clsDatabase.ExecuteQuery("update tbl_product set C_Rank = " + intInsertRecord + " where PK_ProductID = " + intInsertRecord);
                Response.Redirect("Default.aspx?page=product&mod=product");
            }
            catch
            {
                clsErr.setErr("Error", "Bạn hãy kiểm tra lại thông tin (Định dạng ảnh, file, các ký tự đặc biệt ...)");
                //Ket xuat loi
                if (clsErr.checkErr())
                {
                    block_error.Text = clsErr.displayErr();
                }
            }
        }

        //===============================================
    }

    protected void BtnEdit_ServerClick(object sender, EventArgs e)
    {

        //Khoi tao cac gia tri        
        string strName = clsInput.encodeStr(txtName.Text);
        int intCategoryID = Convert.ToInt32(DrdCategory.Text.ToString());
        string strDes = clsInput.encodeStr(FCKeditor1.Value);
        string strCode = clsInput.encodeStr(lblCode.Text);
        string strPrice = clsInput.encodeStr(txtPrice.Text);
        int intCheckHot = 0;
        if (ChkHot.Checked == true)
            intCheckHot = 1;

        //====================================================
        //Get Url
        int intId = clsInput.getNumericInput("id", 0);
        //====================================================
        //Kiem tra loi
        //An thuoc tinh thong bao loi
        block_error.Text = "";
        if (strName == "")
            clsErr.setErr("Tiêu đề", "Bạn hãy nhập vào tiêu đề");

        int n;
        bool isNumeric = int.TryParse(strPrice, out n);
        if (!isNumeric)
            clsErr.setErr("Giá sản phẩm", "Giá sản phẩm phải là số");

        if (uploadFile.PostedFile.ContentLength > 0)
        {
            if (clsFile.checkImagesUploadSize(uploadFile) == false)
                clsErr.setErr("Dung lượng ảnh", "Ảnh có dung lượng quá lớn, bạn chỉ được phép upload ảnh <=1Mb");
            if (clsFile.checkImagesUploadType(uploadFile) == false)
                clsErr.setErr("Định dạng ảnh", "Bạn chỉ được phép upload ảnh có định dạng .gif, .jpg, .png");
        }


        //Ket xuat loi
        if (clsErr.checkErr())
        {
            block_error.Text = clsErr.displayErr();
        }
        else
        {
            try
            {
                string strImageURL = clsFile.saveImages(uploadFile, "product");
                string strSql = "update tbl_product set C_Name = N'" + strName + "', C_Des = N'" + strDes + "',FK_CategoryID = " + intCategoryID + ",C_Code=" + strCode + ",C_Price=" + strPrice + ",C_Hot="+intCheckHot.ToString()+ " where PK_ProductID=" + intId;
                if (strImageURL != "")
                    strSql = "update tbl_product set C_Name = N'" + strName + "', C_Des = N'" + strDes + "', C_Img = N'" + strImageURL + "',FK_CategoryID = " + intCategoryID +",C_Code="+strCode+",C_Price="+strPrice + " where PK_ProductID=" + intId;
                clsDatabase.ExecuteQuery(strSql);
                Response.Redirect("Default.aspx?page=product&mod=product");
            }
            catch
            {
                clsErr.setErr("Error", "Bạn hãy kiểm tra lại thông tin (Định dạng ảnh, file, các ký tự đặc biệt ...)");
                //Ket xuat loi
                if (clsErr.checkErr())
                {
                    block_error.Text = clsErr.displayErr();
                }
            }
        }

        //===============================================
    }

}
