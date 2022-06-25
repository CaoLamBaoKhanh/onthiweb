<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xoakhoa.aspx.cs" Inherits="testbuoi1.xoakhoa" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sach Khoa</h2>
        </div>
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKhoa" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="737px">
                    <Columns>
                        <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" ReadOnly="True" SortExpression="MaKhoa" />
                        <asp:BoundField DataField="TenKhoa" HeaderText="TenKhoa" SortExpression="TenKhoa" />
                        <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:CommandField HeaderText="xoa" ShowDeleteButton="True" ShowHeader="True" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:KhoaConnectionString %>" DeleteCommand="DELETE FROM [Khoa] WHERE [MaKhoa] = @MaKhoa" InsertCommand="INSERT INTO [Khoa] ([MaKhoa], [TenKhoa], [SDT], [Email]) VALUES (@MaKhoa, @TenKhoa, @SDT, @Email)" SelectCommand="SELECT * FROM [Khoa]" UpdateCommand="UPDATE [Khoa] SET [TenKhoa] = @TenKhoa, [SDT] = @SDT, [Email] = @Email WHERE [MaKhoa] = @MaKhoa">
                    <DeleteParameters>
                        <asp:Parameter Name="MaKhoa" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="MaKhoa" Type="String" />
                        <asp:Parameter Name="TenKhoa" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenKhoa" Type="String" />
                        <asp:Parameter Name="SDT" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="MaKhoa" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:KhoaConnectionString %>" SelectCommand="SELECT * FROM [Khoa]" DeleteCommand="DELETE FROM Khoa WHERE (MaKhoa = @parameter)">
                    <DeleteParameters>
                        <asp:ControlParameter ControlID="GridView1" Name="prameter" PropertyName="SelectedValue" />
                        <asp:Parameter Name="parameter" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </ContentTemplate>
        </asp:UpdatePanel>
        <div>
            <asp:ObjectDataSource ID="ObjectDataSource1" runat="server">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="newparameter" PropertyName="SelectedValue" />
                </DeleteParameters>




            </asp:ObjectDataSource>



        </div>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="MaKhoa" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="MaKhoa" HeaderText="MaKhoa" ReadOnly="True" SortExpression="MaKhoa" />
                <asp:BoundField DataField="TenKhoa" HeaderText="TenKhoa" SortExpression="TenKhoa" />
                <asp:BoundField DataField="SDT" HeaderText="SDT" SortExpression="SDT" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:CommandField HeaderText="delete" ShowDeleteButton="True" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:KhoaConnectionString %>" DeleteCommand="DELETE FROM [Khoa] WHERE [MaKhoa] = @MaKhoa" InsertCommand="INSERT INTO [Khoa] ([MaKhoa], [TenKhoa], [SDT], [Email]) VALUES (@MaKhoa, @TenKhoa, @SDT, @Email)" SelectCommand="SELECT * FROM [Khoa]" UpdateCommand="UPDATE [Khoa] SET [TenKhoa] = @TenKhoa, [SDT] = @SDT, [Email] = @Email WHERE [MaKhoa] = @MaKhoa">
            <DeleteParameters>
                <asp:Parameter Name="MaKhoa" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaKhoa" Type="String" />
                <asp:Parameter Name="TenKhoa" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenKhoa" Type="String" />
                <asp:Parameter Name="SDT" Type="String" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="MaKhoa" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
