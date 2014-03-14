<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRequest.aspx.cs" Inherits="WebApplication2.test" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

          <h1>Create Request Page</h1>
    <label for="tags">Tags: </label>
  <input id="tags"/> 
   
       
            <asp:Table ID="Table1"  CellPadding="5" GridLines="Both" runat="server">
          
        <asp:TableRow  CssClass="sub-heading">
            <asp:TableCell>Module Search</asp:TableCell>
            
            <asp:TableCell>Modules Found</asp:TableCell>
          
        </asp:TableRow>
        <asp:TableRow height="100px"><asp:TableCell CssClass="display-cell"><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></asp:TableCell>
            <asp:TableCell  CssClass="display-cell">Display Here</asp:TableCell>
            
    

        </asp:TableRow>
                 </asp:Table>
    
</asp:Content>
