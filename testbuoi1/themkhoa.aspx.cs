using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace testbuoi1
{
    public partial class themkhoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        void Them()
        {
            DataSet1TableAdapters.KhoaTableAdapter a = new DataSet1TableAdapters.KhoaTableAdapter();
            if (txtNhapMaKhoa.Text == "" || txtNhapTenKhoa.Text == "" )
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert",
                    "alert('khong duoc bo trong Ma khoa va Ten khoa')", true);
                return;

            }
            else
            {
              
                a.Insert(txtNhapMaKhoa.Text,txtNhapTenKhoa.Text, txtSDT.Text, txtEmail.Text);
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alert",
                    "alert('Insert thanh cong')", true);
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            Them();
        }
    }
}