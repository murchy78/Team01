<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditModules.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Add Module</h1>
        <asp:TextBox ID="TextBox_ModCode" placeholder="Module Code" runat="server"></asp:TextBox>
        <asp:TextBox ID="TextBox_ModTitle" placeholder="Module Title" runat="server"></asp:TextBox>
        <asp:Button ID="AddMod" OnClick="AddMod_Click" runat="server" Text="Add" />
        <h1>Edit Modules</h1>
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ModuleID" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:BoundField DataField="ModuleCode" HeaderText="Module Code" SortExpression="ModuleCode" />
                <asp:BoundField DataField="ModuleTitle" HeaderText="Module Title" SortExpression="ModuleTitle" />
                <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" HeaderText="Options" ShowHeader="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:team01Database %>"
            DeleteCommand="DELETE FROM dbo.ModuleManagement WHERE ModuleID = @ModuleID" 
            SelectCommand="SELECT dbo.ModuleManagement.* FROM dbo.ModuleManagement" 
            UpdateCommand="UPDATE dbo.ModuleManagement SET ModuleCode = @ModuleCode, ModuleTitle = @ModuleTitle WHERE ModuleID = @ModuleID">
            <DeleteParameters>
                <asp:Parameter Name="ModuleID" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="ModuleCode" />
                <asp:Parameter Name="ModuleTitle" />
                <asp:Parameter Name="ModuleID" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
