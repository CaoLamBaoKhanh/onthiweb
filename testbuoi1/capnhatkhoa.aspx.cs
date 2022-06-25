using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testbuoi1
{
    public partial class capnhatkhoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
      
        protected void txtMaKhoa_TextChanged(object sender, EventArgs e)
        {
         

        }
        protected void CapNhat()
        {
            DataSet1TableAdapters.KhoaTableAdapter a = new DataSet1TableAdapters.KhoaTableAdapter();

            if (txtMaKhoa.Text == "")
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Khong duoc bo trong Ma Khoa')", true);


            }
            else
            {
                //goi update trong Dataset 
                a.Update( txtTenKhoa.Text, txtSDT.Text, txtEmail.Text, txtMaKhoa.Text);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert", "alert('update thanh cong')", true);
            }


        }


        protected void btnCapNhat_Click(object sender, EventArgs e)
        {
            CapNhat();
           
        }

        protected void btnXuat_Click(object sender, EventArgs e)
        {
            DataSet1TableAdapters.KhoaTableAdapter a = new DataSet1TableAdapters.KhoaTableAdapter();
            DataTable dt = a.GetDataBy(txtMaKhoa.Text);
            if (dt.Rows.Count != 0)
            {
                DataRow row = dt.Rows[0];
                txtMaKhoa.Text = row[0].ToString();
                txtTenKhoa.Text = row[1].ToString();
                txtSDT.Text = row[2].ToString();
                txtEmail.Text = row[3].ToString();
            }
            else
            {
                txtMaKhoa.Text = "";
                txtTenKhoa.Text = "";
                txtSDT.Text = "";
                txtEmail.Text = "";
            }
        }
    }
}