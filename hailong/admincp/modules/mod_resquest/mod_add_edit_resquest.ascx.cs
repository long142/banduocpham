﻿using System;
using System.Collections.Generic;
//using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admincp_modules_mod_resquest_mod_add_edit_resquest : System.Web.UI.UserControl
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
                edit_category_product(intId);
        }
        else if (strDo == "add")
        {
            PnAdd.Visible = true;
            PnEdit.Visible = false;
            if (!Page.IsPostBack)
                add_category_product();
        }
        else
        {
            //Hien thi thong bao loi, khong thay tac vu yeu cau
            //==================================================
            //Display Msg
            clsConfig.redirectUrl("Default.aspx?page=category_product&mod=product");
            //==================================================
        }

    }


    private void edit_category_product(int intID)
    {
        DataTable dt = clsDatabase.getDataTable("select * from tbl_category_product where PK_CategoryID = " + intID);
        string strName = "";
        string strDes = "";
        int intCheckUrl = 0;
        string strUrl = "";
        int intParentID = 0;

        int intCheckMenuNgang = 0;

        if (dt.Rows.Count > 0)
        {
            strName = clsInput.decodeStr(dt.Rows[0]["C_Name"].ToString());
            strDes = clsInput.decodeStr(dt.Rows[0]["C_Des"].ToString());
            intCheckUrl = Convert.ToInt16(dt.Rows[0]["C_PointUrl"]);
            strUrl = dt.Rows[0]["C_Url"].ToString();
            intParentID = Convert.ToInt16(dt.Rows[0]["FK_ParentID"]);

            intCheckMenuNgang = Convert.ToInt16(dt.Rows[0]["C_MenuNgang"]);
        }

        //===============================================================
        FCKeditor2.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor2.Config["AutoDetectLanguage"] = "false";
        FCKeditor2.Config["DefaultLanguage"] = "vi";
        FCKeditor2.Width = 900;
        FCKeditor2.Height = 250;
        //setup thame
        FCKeditor2.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================
        if (Page.IsPostBack)
            return;

        //Dropdown
        DataTable dtCategory = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID = 0 AND FK_LangID = " + lang.getLangID() + " and C_PointUrl = 0 " + " AND PK_CategoryID <> " + intID + " order by C_Rank desc");
        DrdCategory.Items.Clear();
        DrdCategory.Items.Add(new ListItem("", "0"));
        int intSelected = 0;
        // Response.Write();

        for (int i = 0; i < dtCategory.Rows.Count; i++)
        {
            intSelected++;
            if (Convert.ToInt16(dtCategory.Rows[i]["PK_CategoryID"]) == intID)
                ;
            else
                DrdCategory.Items.Add(new ListItem(dtCategory.Rows[i]["C_Name"].ToString(), dtCategory.Rows[i]["PK_CategoryID"].ToString()));
            if (Convert.ToInt16(dtCategory.Rows[i]["PK_CategoryID"]) == intParentID)
            {
                DrdCategory.SelectedIndex = intSelected;
            }
        }

        // Set the startup editor value.
        txtName.Text = strName;
        FCKeditor2.Value = strDes;
        txtUrl.Text = "";
        if (intCheckUrl == 1)
        {
            ChkUrl.Checked = true;
            txtUrl.Text = strUrl;
        }

        if (intCheckMenuNgang == 1)
            ChkMenuNgang.Checked = true;
        //==========================================
    }

    private void add_category_product()
    {

        string strName = "";
        string strDes = "";
        int intCheckUrl = 0;
        string strUrl = "";

        int intCheckMenuNgang = 0;

        //===============================================================
        FCKeditor2.BasePath = clsConfig.getFckPath();
        //setup lang
        FCKeditor2.Config["AutoDetectLanguage"] = "false";
        FCKeditor2.Config["DefaultLanguage"] = "vi";
        FCKeditor2.Width = 900;
        FCKeditor2.Height = 250;
        //setup thame
        FCKeditor2.Config["SkinPath"] = clsConfig.getFckPath() + "editor/skins/office2003/";
        //===============================================================
        if (Page.IsPostBack)
            return;

        //Dropdown
        DataTable dtCategory = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID = 0 and FK_LangID = " + lang.getLangID() + " and C_PointUrl = 0 " + " order by C_Rank desc");
        DrdCategory.Items.Clear();
        DrdCategory.Items.Add(new ListItem("", "0"));
        int intSelected = 0;
        // Response.Write();
        for (int i = 0; i < dtCategory.Rows.Count; i++)
        {

            DrdCategory.Items.Add(new ListItem(dtCategory.Rows[i]["C_Name"].ToString(), dtCategory.Rows[i]["PK_CategoryID"].ToString()));
            DataTable dtCategorySub = clsDatabase.getDataTable("select * from tbl_category_product where FK_ParentID = " + dtCategory.Rows[i]["PK_CategoryID"].ToString() + " AND FK_LangID = " + lang.getLangID() + " order by C_Rank desc");



        }

        // Set the startup editor value.
        txtName.Text = strName;
        FCKeditor2.Value = strDes;
        txtUrl.Text = "";
        //==========================================
    }

    protected void BtnSubmit_ServerClick(object sender, EventArgs e)
    {
        //Khoi tao cac gia tri
        string strName = clsInput.encodeStr(txtName.Text);
        string strDes = clsInput.encodeStr(FCKeditor2.Value);
        string strUrl = clsInput.encodeStr(txtUrl.Text);
        int intCategoryID = Convert.ToInt32(DrdCategory.SelectedValue.ToString());
        int intCheckUrl = 0;

        int intCheckMenuLeft = 0;

        if (ChkUrl.Checked == true)
            intCheckUrl = 1;


        int intCheckMenuNgang = 0;
        if (ChkMenuNgang.Checked == true)
            intCheckMenuNgang = 1;

        //====================================================
        //Kiem tra loi
        //An thuoc tinh thong bao loi
        block_error.Text = "";
        if (strName == "")
            clsErr.setErr("Tiêu đề", "Bạn hãy nhập vào tiêu đề");
        //if (intCategoryID == 0)
        //    clsErr.setErr("Danh mục", "Không tạo được danh mục cha, chỉ tạo được danh mục con");
        //Ket xuat loi
        if (clsErr.checkErr())
        {
            block_error.Text = clsErr.displayErr();
        }
        else
        {
            string strSql = "insert into tbl_category_product(FK_LangID, C_Name, FK_ParentID, C_Des, C_Url, C_PointUrl, C_Active, C_MenuNgang) values (" + lang.getLangID() + ",N'" + strName + "'," + intCategoryID + ",N'" + strDes + "','" + strUrl + "','" + intCheckUrl + "',1," + intCheckMenuNgang + ")";
            clsDatabase.ExecuteQuery(strSql);
            int intInsertRecord = clsDatabase.getInsertID("tbl_category_product", "PK_CategoryID");
            clsDatabase.ExecuteQuery("update tbl_category_product set C_Rank = " + intInsertRecord + " where PK_CategoryID = " + intInsertRecord);
            Response.Redirect("Default.aspx?page=category_product&mod=product");
        }

        //===============================================
    }
    protected void BtnEdit_ServerClick(object sender, EventArgs e)
    {
        //Khoi tao cac gia tri
        string strName = clsInput.encodeStr(txtName.Text);
        string strDes = clsInput.encodeStr(FCKeditor2.Value);
        string strUrl = clsInput.encodeStr(txtUrl.Text);
        int intCategoryID = Convert.ToInt32(DrdCategory.SelectedValue.ToString());
        int intCheckUrl = 0;

        if (ChkUrl.Checked == true)
            intCheckUrl = 1;

        int intCheckMenuNgang = 0;
        if (ChkMenuNgang.Checked == true)
            intCheckMenuNgang = 1;
        //====================================================
        //Get Url
        int intId = clsInput.getNumericInput("id", 0);
        //====================================================
        //Kiem tra loi
        //An thuoc tinh thong bao loi
        block_error.Text = "";
        if (strName == "")
            clsErr.setErr("Tiêu đề", "Bạn hãy nhập vào tiêu đề");
        //if (intCategoryID == 0)
        //    clsErr.setErr("Danh mục", "Không tạo được danh mục cha, chỉ tạo được danh mục con");
        //Ket xuat loi
        if (clsErr.checkErr())
        {
            block_error.Text = clsErr.displayErr();
        }
        else
        {
            string strSql = "update tbl_category_product set C_Name = N'" + strName + "', C_Des = N'" + strDes + "', C_PointUrl = " + intCheckUrl + ",C_Url = '" + strUrl + "',FK_ParentID = " + intCategoryID + ", C_MenuNgang = " + intCheckMenuNgang + " where PK_CategoryID=" + intId;
            clsDatabase.ExecuteQuery(strSql);
            Response.Redirect("Default.aspx?page=category_product&mod=product");
        }
        //===============================================
    }

}