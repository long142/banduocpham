using System;
using System.Collections.Generic;
using System.Web;
using System.Data;

/// <summary>
/// Summary description for clsCart
/// </summary>
public class clsCart
{
	
    public  DataTable dt;
    public clsCart()
    {
        dt = new DataTable();
        dt.Columns.Add("ID");
        dt.Columns.Add("TenSanPham");
        dt.Columns.Add("AnhSanPham");
        dt.Columns.Add("LoaiSanPhamID");
        dt.Columns.Add("GiaBan");
        dt.Columns.Add("GiaKhuyenMai");
        dt.Columns.Add("SoLuong");
        dt.Columns.Add("ThongTinSanPham");
        dt.Columns.Add("NgayTao");
        dt.Columns.Add("MaSanPham");
        dt.Columns.Add("Money");
    }
    public  DataTable GetDataTable()
    {
        return dt;
    }

    /// <summary>
    /// Dien hang hoa vua chon mua vao bang luu tru
    /// </summary>
    /// <param name="TenSP"></param>

    public  void dienVaoBang(string id, string tenSP, string anhSP, string loaiSanPhamID, double giaBan, double giaKhuyenMai, double soLuong, string thongTinSanPham, string ngayTao, string maSP, double money)
    {
        if (dt.Rows.Count != 0)
        {
            bool kiemtra = false;
            foreach (DataRow dr in dt.Rows)
            {
                if (dr[9].ToString().Equals(maSP))
                {
                    dr[6] = Convert.ToDouble(dr[6].ToString()) + soLuong;
                    dr[10] = Convert.ToDouble(dr[6].ToString()) * giaBan;
                    kiemtra = true;
                }
            }
            if (!kiemtra)
            {
                DataRow dr = dt.NewRow();
                dr[0] = id;
                dr[1] = tenSP;
                dr[2] = anhSP;
                dr[3] = loaiSanPhamID;
                dr[4] = giaBan;
                dr[5] = giaKhuyenMai;
                dr[6] = soLuong;
                dr[7] = thongTinSanPham;
                dr[8] = ngayTao;
                dr[9] = maSP;
                dr[10] = giaBan;
                dt.Rows.Add(dr);
            }
        }
        else
        {
            DataRow dr = dt.NewRow();
            dr[0] = id;
            dr[1] = tenSP;
            dr[2] = anhSP;
            dr[3] = loaiSanPhamID;
            dr[4] = giaBan;
            dr[5] = giaKhuyenMai;
            dr[6] = soLuong;
            dr[7] = thongTinSanPham;
            dr[8] = ngayTao;
            dr[9] = maSP;
            dr[10] = giaBan;
            dt.Rows.Add(dr);
        }
    }

}