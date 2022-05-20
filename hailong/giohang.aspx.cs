using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class giohang : System.Web.UI.Page
{
    public string strSiteHome = "";
    public clsCart gh;
    public DataTable dsGioHang =null;
    protected void Page_Load(object sender, EventArgs e)
    {
        

        string strMod = clsInput.getStringInput("mod", 0);
        string strPage = clsInput.getStringInput("page", 0);

        inc_header.Controls.Add(LoadControl("~/modules/mod_top/mod_header.ascx"));
        inc_footer.Controls.Add(LoadControl("~/modules/mod_footer/mod_footer.ascx"));

        if (!IsPostBack)
        {
            if (Session["GioHang"] != null)
            {

                gh = (clsCart)Session["giohang"];
                dsGioHang = gh.GetDataTable();
                if (dsGioHang.Rows.Count > 0)
                {
                    PanelKhongHang.Visible = false;
                    Bind();
                }
                else
                {
                    PanelKhongHang.Visible = true;
                    PanelCoHang.Visible = false;
                }
            }
            else
            {
                PanelKhongHang.Visible = true;
                PanelCoHang.Visible = false;
            }
        }
    }

    public void Bind()
    {

        DataTable tb = gh.GetDataTable();
        GridView1.DataSource = tb;
        GridView1.DataBind();
        double tongtien = 0;
        double TongTL = 0;
        foreach (GridViewRow gr in GridView1.Rows)
        {
            TableCell tc = gr.Controls[1] as TableCell;
            TextBox t = tc.Controls[1] as TextBox;
            tongtien += double.Parse(gr.Cells[8].Text);
            //TongTL += double.Parse(t.Text) * double.Parse(gr.Cells[6].Text);

        }
        lblTongTien.Text = clsFunction.getNumberVN(tongtien.ToString()) + "₫"; 
        //lblTongTien.Text = tongtien.ToString("###,###").Replace(',', '.') + "Đ";
        //lblTongTL.Text = TongTL.ToString() + "g";
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //int dem = GridView1.Rows.Count;
        //string ma = GridView1.Rows[dem - 1].Cells[7].Text;
        //Response.Redirect("ChiTiet.aspx?Product_ID=" + ma);
    }
    private bool Ktra(string t)
    {
        bool kt = true;
        if (t == null || t == "") kt = false;
        for (int i = 0; i < t.Length; i++)
        {
            if (t[i].ToString() != "1" && t[i].ToString() != "2" && t[i].ToString() != "3" && t[i].ToString() != "4" && t[i].ToString() != "5" && t[i].ToString() != "6" && t[i].ToString() != "7" && t[i].ToString() != "8" && t[i].ToString() != "8" && t[i].ToString() != "9")
            {
                kt = false;
                break;
            }
        }
        return kt;
    }


    private void xoa(DataTable tb, string ma)
    {
        foreach (DataRow dr in tb.Rows)
        {
            if (dr[9].ToString() == ma)
            {
                tb.Rows.Remove(dr);
                break;
            }
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("TrangChu.aspx");
    }

    protected void btnThanhToan_Click(object sender, ImageClickEventArgs e)
    {
        //if (Session["UserName"] == null)
        //{
        //    Response.Redirect("~/DangNhap.aspx");
        //}
        //else
        //{
        //    Response.Redirect("~/ThanhToan.aspx");
        //}
    }



    protected void btnCapNhat_Click(object sender, EventArgs e)
    {
        gh = (clsCart)Session["giohang"];
        DataTable tb = gh.GetDataTable();
        if (Session["giohang"] != null)
        {
            if (tb.Rows.Count > 0)
            {
                int dem = tb.Rows.Count;
                CheckBox cb;
                TextBox t;
                for (int i = 0; i < GridView1.Rows.Count; i++)
                {
                    string ma = GridView1.Rows[i].Cells[7].Text;

                    cb = (CheckBox)GridView1.Rows[i].FindControl("CheckXoa");
                    if (cb.Checked)
                    {
                        xoa(tb, ma);
                        dem--;
                    }
                    else
                    {
                        t = (TextBox)GridView1.Rows[i].FindControl("txtSL");
                        if ((
                            //Ktra(t.Text) == false
                            false
                            ))
                        {
                            xoa(tb, ma);
                            dem--;
                        }
                        else
                        {
                            double sl = double.Parse(t.Text);
                            double gia = double.Parse(GridView1.Rows[i].Cells[2].Text);
                            foreach (DataRow dr in tb.Rows)
                            {
                                if (dr[9].ToString().Trim() == ma.Trim())
                                {
                                    dr[6] = sl;
                                    dr[10] = sl * gia;
                                    break;
                                }
                            }
                        }
                    }
                    if (dem == 0)
                    {
                        PanelKhongHang.Visible = true;
                        PanelCoHang.Visible = false;
                    }
                }
                GridView1.DataSource = tb;
                GridView1.DataBind();
                double tongtien = 0;
                double TongTL = 0;
                foreach (GridViewRow gr in GridView1.Rows)
                {
                    TableCell tc = gr.Controls[1] as TableCell;
                    TextBox txt = tc.Controls[1] as TextBox;
                    tongtien += double.Parse(gr.Cells[8].Text);
                    //TongTL += double.Parse(txt.Text) * double.Parse(gr.Cells[6].Text);

                }
                lblTongTien.Text = clsFunction.getNumberVN(tongtien.ToString()) + "₫"; 
                    //tongtien.ToString("###,###").Replace(',', '.') + "₫";
                //lblTongTL.Text = TongTL.ToString() + "g";

            }
        }
    }
    protected void btnTiepTucMuaHang_Click(object sender, EventArgs e)
    {
        Response.Redirect(clsConfig.GetHostUrl() + "/product/2/3");
    }
    protected void btnThanhToan_Click1(object sender, EventArgs e)
    {
        //if (this.Session["khachhangid"] != null)
        //    Response.Redirect("ThanhToan.aspx?thanhtien=" + lblTongTien.Text);
        //else
        //{

        //    Response.Redirect("CheckDangNhap.aspx?thanhtien=" + lblTongTien.Text);
        //}
    }
    


    protected void btnMuaHangTiep_Click(object sender, EventArgs e)
    {
        Response.Redirect(clsConfig.GetHostUrl() + "/product/2/3");
    }
}