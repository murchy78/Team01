<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRequest.aspx.cs" Inherits="WebApplication2.test" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <link href="CreateRequestStyle.css" rel="stylesheet" type="text/css" />
  <div class="title">
          <h1>Create Request Page</h1>
    <label for="tags">Tags: </label>
  <input id="tags"/> 
      </div>
<div class="container">
<asp:Panel cssclass="panel" ID="Panel1" runat="server" >
    <br/>
        <asp:Table ID="SearchTable" class="table" CellPadding="5" GridLines="Both" runat="server">
        <asp:TableRow  CssClass="sub-heading">
            <asp:TableCell>Module Search</asp:TableCell>
            <asp:TableCell>Room Capacity</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow height="100px"><asp:TableCell CssClass="display-cell"><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></asp:TableCell>
            
            <asp:TableCell CssClass="display-cell"><asp:TextBox placeholder="Enter Minimum Capacity" ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        </asp:Table>

    
            <br />
            <asp:Table ID="FacilitiesTable" GridLines="Both" CssClass="table" runat="server">
                
                <asp:TableRow CssClass="sub-heading"><asp:TableCell ColumnSpan="5">Park</asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                    
                   
                    <asp:TableCell >
                        <asp:CheckBox ID="west" CssClass="no-border" Text="West" runat="server" />
                    </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="central" CssClass="no-border" Text="Central" runat="server" /></asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="east" CssClass="no-border" Text="East" runat="server" /></asp:TableCell>
                     <asp:TableCell CssClass="no-border"></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow CssClass="sub-heading"><asp:TableCell ColumnSpan="5">Facilities</asp:TableCell></asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>

                        <asp:CheckBox ID="CheckBoxOHP" Text="OHP/Simultaneous Board" runat="server" />
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBoxDP" Text="Data Projector" runat="server" /></asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBoxDP2" Text="Data Projector x2" runat="server" /></asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBoxCH" Text="Chalk" runat="server" /></asp:TableCell>
                    <asp:TableCell>
                        <asp:CheckBox ID="CheckBoxWB" Text="White Board" runat="server" /></asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxLB" Text="Large Board" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxL" Text="Lecture" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxT" Text="Tiered" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxF" Text="Flat" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxWC" Text="Wheelchair" runat="server" /></asp:TableCell>

               </asp:TableRow>
                
            </asp:Table>
            <asp:Table ID="Table1" GridLines="Both" CssClass="table" runat="server">
                <asp:TableRow><asp:TableCell CssClass="sub-heading">Room Search</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading" >Rooms</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading">Selected Results</asp:TableCell>
                   </asp:TableRow>
                <asp:TableRow Height="100px">
                    <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>Insert Here</asp:TableCell>
                    <asp:TableCell>Insert Here</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="Button1" runat="server" CssClass="button" Text="Left" />
                  
                        <asp:Button ID="Button2" runat="server" CssClass="button" Text="Right" />
                    </asp:TableCell>
                    
                    <asp:TableCell>
                    <asp:Button ID="Button5" runat="server" CssClass="button" Text="Add Selected" />
                    <asp:Button ID="Button6" runat="server" CssClass="button" Text="Clear Selected" />
                    <asp:Button ID="Button7" runat="server" CssClass="button" Text="Clear All" />
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>


            <br />
       

        <asp:Table ID="WeekTable" CellPadding="5" CssClass="table" GridLines="Both" runat="server">
            
            <asp:TableRow CssClass="sub-heading" >
                
                <asp:TableCell RowSpan="2" Width="30px" >Weeks</asp:TableCell>
                <asp:TableCell>1</asp:TableCell>
                <asp:TableCell>2</asp:TableCell>
                <asp:TableCell>3</asp:TableCell>
                <asp:TableCell>4</asp:TableCell>
                <asp:TableCell>5</asp:TableCell>
                <asp:TableCell>6</asp:TableCell>
                <asp:TableCell>7</asp:TableCell>
                <asp:TableCell>8</asp:TableCell>
                <asp:TableCell>9</asp:TableCell>
                <asp:TableCell>10</asp:TableCell>
                <asp:TableCell>11</asp:TableCell>
                <asp:TableCell>12</asp:TableCell>
                <asp:TableCell>13</asp:TableCell>
                <asp:TableCell>14</asp:TableCell>
                <asp:TableCell>15</asp:TableCell>
                <asp:TableCell>All(1-12)</asp:TableCell>
                <asp:TableCell>All(1-15)</asp:TableCell>
                <asp:TableCell>Odd Weeks</asp:TableCell>
                <asp:TableCell>Even Weeks</asp:TableCell>
               
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK1" runat="server" /></asp:TableCell>                
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK2" runat="server" /></asp:TableCell>                
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK3" runat="server" /></asp:TableCell>                
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK4" runat="server" /></asp:TableCell>     
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK5" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK6" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK7" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK8" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK9" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK10" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK11" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK12" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK13" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK14" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWK15" runat="server" /></asp:TableCell>           
                <asp:TableCell><asp:CheckBox ID="CheckBoxWKA12" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWKA13" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWKO" runat="server" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxWKE" runat="server" /></asp:TableCell>


            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="18">
                    <asp:Button ID="Button4" runat="server" CssClass="button" Text="Clear All Week(s)" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxSem1" runat="server" Text="Semester 1" /></asp:TableCell>
                <asp:TableCell><asp:CheckBox ID="CheckBoxSem2" runat="server" Text="Semester 2"/></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <br />
            <asp:Table ID="PeriodTable" GridLines="Both" CssClass="table"  runat="server">
                
            <asp:TableRow CssClass="sub-heading">
                    <asp:TableCell>Day</asp:TableCell>
                    <asp:TableCell>All</asp:TableCell>
                    <asp:TableCell>9:00-9:50</asp:TableCell>
                    <asp:TableCell>10:00-10:50</asp:TableCell>
                    <asp:TableCell>11:00-11:50</asp:TableCell>
                    <asp:TableCell>12:00-12:50</asp:TableCell>
                    <asp:TableCell>13:00-13:50</asp:TableCell>
                    <asp:TableCell>14:00-14:50</asp:TableCell>
                    <asp:TableCell>15:00-15:50</asp:TableCell>
                    <asp:TableCell>16:00-16:50</asp:TableCell>
                    <asp:TableCell>17:00-17:50</asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >All</asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA1" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA2" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA3" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA4" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA5" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA6" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA7" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA8" runat="server" /></asp:TableCell>
                    <asp:TableCell><asp:CheckBox ID="CheckBoxA9" runat="server" /></asp:TableCell>

                

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Monday</asp:TableCell>

                     <asp:TableCell><asp:CheckBox ID="CheckBoxM1" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM2" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM3" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM4" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM5" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM6" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM7" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM8" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM9" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxM10" runat="server" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Tuesday</asp:TableCell>
                     
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT1" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT2" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT3" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT4" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT5" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT6" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT7" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT8" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT9" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBoxT10" runat="server" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Wednesday</asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox32" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox33" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox34" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox35" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox36" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox37" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox38" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox39" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox40" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox41" runat="server" /></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Thursday</asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox42" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox43" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox44" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox45" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox46" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox47" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox48" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox49" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox50" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox51" runat="server" /></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Friday</asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox52" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox53" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox54" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox55" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox56" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox57" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox58" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox59" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox60" runat="server" /></asp:TableCell>
                     <asp:TableCell><asp:CheckBox ID="CheckBox61" runat="server" /></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="12">
                    <asp:Button ID="clearDay_button" runat="server" CssClass="button" width="210px" Text="Clear All Day(s) and Period(s)" /></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell CssClass="sub-heading" ColumnSpan="12">Please enter any special requests you have: </asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="12" ><asp:TextBox ID="specialRequest_TB" width="500px" height="100px" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:TableCell ColumnSpan="12">
                <asp:Button runat="server" CssClass="button" Text="Clear All" />
                <asp:Button runat="server" CssClass="button" Text="Submit" /></asp:TableCell>
            </asp:TableRow>
            </asp:Table>
            </asp:Panel>
        </div>
       
    
</asp:Content>
