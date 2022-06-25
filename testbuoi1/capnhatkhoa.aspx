<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="capnhatkhoa.aspx.cs" Inherits="testbuoi1.capnhatkhoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager2" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          
               <ContentTemplate>
        <div>
            <h2>Cập nhật khoa</h2>
        
              
        </div>
        <table class="auto-style1">
            <tr>
               
                <td class="auto-style2">Nhập mã khoa</td>
                <td>
                    <asp:TextBox ID="txtMaKhoa" runat="server" OnTextChanged="txtMaKhoa_TextChanged"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nhập tên khoa</td>
                <td>
                    <asp:TextBox ID="txtTenKhoa" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nhập số điện thoại</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Nhập Email</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Button ID="btnCapNhat" runat="server" Text="Cập nhật" OnClick="btnCapNhat_Click" />
                    <asp:Button ID="btnXuat" runat="server" OnClick="btnXuat_Click" Text="Xuat" />
                </td>
                <td>&nbsp;</td>
            </tr>

        </table>
                 </ContentTemplate>

           </asp:UpdatePanel>
    </form>
    <p>
        `</p>
</body>
</html>
