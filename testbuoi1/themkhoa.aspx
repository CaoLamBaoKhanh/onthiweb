<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="themkhoa.aspx.cs" Inherits="testbuoi1.themkhoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 141px;
        }
        .auto-style2 {
            width: 161px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 1257px;
        }
        .auto-style5 {
            width: 161px;
            height: 43px;
        }
        .auto-style6 {
            height: 43px;
        }
    </style>
</head>
<body style="height: 231px">
    <form id="form1" runat="server">
        <div>
            <h2>Thông tin khoa</h2>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">nhập mã khoa</td>
                    <td>
                        <asp:TextBox ID="txtNhapMaKhoa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">nhập tên khoa</td>
                    <td>
                        <asp:TextBox ID="txtNhapTenKhoa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">nhập số điện thoại</td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5">nhập email</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="txtEmail" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                    </td>
                </tr>
              
            </table>
        </div>
    <table class="auto-style3">
        <tr>
              
            <td class="auto-style4">
                <asp:Button ID="btnThem" runat="server" Text="Thêm" OnClick="btnThem_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    </form>
    </body>
</html>
