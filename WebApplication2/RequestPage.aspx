<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RequestPage.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Request Mode</title>

  
    <style type="text/css">
        
       body{
            font-family:"Times New Roman", Times, serif;
            text-align:center;
        }
       br
        {
            margin: 2px;
            display: block;
        }
       table {
            margin-left:auto;
            margin-right:auto;
            width: 970px;
        }
        td.row {
            text-align: center;
            margin-left: auto;
            margin-right: auto;
        }
        .container{            
            margin-left: auto;
            margin-right: auto;
        }
        .top-div {
         width:1205px;
         padding-top:10px;
         height:75px;
         border-top-left-radius:2em;
         border-top-right-radius:2em;
         border:2px solid #313560;
        }
        .top-div img{
            margin-left: auto;
        }
        
        .top-table{
            width:1200px;
            border-color:#3a1871;
            border-style:dashed;
            margin-left:auto;
            margin-right:auto;
        }
        .left-div {
            
            background-color:#f8e7d2;
            text-align:left;
            float: left;
            width: 180px;
            height: 320px;
            border:2px solid #313560;       
            border-bottom-right-radius:2em;
            border-bottom-left-radius:2em;
        }
        
        .menu-div{
            background-color:#3a1871;
            color:#ffffff;
  
        }
        
        .right-div {
            
            padding-top:20px;
            margin-left: 200px;
            width:1005px;
            height:510px;
            border:2px solid #313560;            
            border-bottom-right-radius:2em;
            border-bottom-left-radius:2em;
        }
        .inner-div {
            height:70px;
        }
        .panel{
            margin-left:auto;
            margin-right:auto;
            width:985px;
            height:500px;
            overflow:scroll;
        }
        .menuBar {
            margin-left:auto;
            margin-right:auto;
            width: 178px;
            height:245px;  
        }
        
        .menu-heading{
            background-color:#3a1871;
            color:#000000;
            font-weight:bold;
            font-size:medium;
            padding:8px;
        }
        .menu-link{            
            color:#000000;
            font-weight:bold;
            font-size:medium;
            padding:8px;
        }
        .menu-table{
            text-align:center;
            width:170px;

        }
        
        .heading{
            color:#ffffff;
            font-weight:bold;
            font-size:medium;
            background-color:#3a1871;
        }
        .sub-heading {
            font-weight:bolder;
            font-size:medium;
        }
        
     
        a:link{
            color:#f8e2e2
        }
        a:hover {
            color:#15fade;
        }
        a:visited{
            color:#4994d4;
        }
        .logo {
            position:absolute;
            margin-left:auto;
            margin-right:auto;
            padding-bottom:10px;
            top: 82px;
            left: 12px;
        }
        .select-cell{
            padding:10px;
            background-color:#f8e7d2;
        }
        .select-cell:hover{
            background-color:#4994d4;
        }
        .display-cell{
            background-color:#f8e7d2;
           
        }
        .msg{
            text-align:left;
        }
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
  
    </head>
<body>
    <div class="container">
    <div class="top-div">
            <img src="Images/LU-mark-rgb.png"/></div>
    <br />
    <div class="left-div">
        <div class="menu-div">
            <asp:Table ID="Table5" class="menu-table" runat="server">
                
                <asp:TableRow><asp:TableCell >Team 01</asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell >Computer Science</asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell >Menu</asp:TableCell></asp:TableRow>
            </asp:Table>
            
        </div>
        <div class="menuBar">
            
                <asp:Table ID="Table2" CssClass="menu-table" runat="server">
                    <asp:TableRow><asp:TableCell CssClass="menu-link"><a href>Requests</a></asp:TableCell></asp:TableRow>
                    <asp:TableRow><asp:TableCell CssClass="menu-link"><a href>Results</a></asp:TableCell></asp:TableRow>
                    <asp:TableRow><asp:TableCell CssClass="menu-link"><a href>Insert</a></asp:TableCell></asp:TableRow>
                    <asp:TableRow><asp:TableCell CssClass="menu-link"><a href>Insert</a></asp:TableCell></asp:TableRow>
                    <asp:TableRow><asp:TableCell CssClass="menu-link"><a href>Logout</a></asp:TableCell></asp:TableRow>
                </asp:Table>

            
        </div>
    </div>
    <div class="right-div">
    <form id="form1" runat="server">
        

        <asp:Panel cssclass="panel" ID="Panel1" runat="server">
        <asp:Table ID="Table1"  CellPadding="5" GridLines="Both" runat="server">
            <asp:TableRow><asp:TableCell CssClass="heading" ColumnSpan="3">Create Request Mode</asp:TableCell></asp:TableRow>
        <asp:TableRow  CssClass="sub-heading">
            <asp:TableCell>Module Search</asp:TableCell>
            <asp:TableCell>Modules Found</asp:TableCell>
            <asp:TableCell>Room Capacity</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow height="100px"><asp:TableCell CssClass="display-cell"><asp:TextBox ID="TextBox2" runat="server" ></asp:TextBox></asp:TableCell>
            <asp:TableCell  CssClass="display-cell">Display Here</asp:TableCell>
            <asp:TableCell CssClass="display-cell"><asp:TextBox placeholder="Enter Minimum Capacity" ID="TextBox1" runat="server"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        </asp:Table>
            <br />
            <asp:Table ID="Table6" GridLines="Both" CssClass="roomOptions" runat="server">
                
            <asp:TableRow><asp:TableCell CssClass="heading" ColumnSpan="3">Room Facilities Options</asp:TableCell></asp:TableRow>
                <asp:TableRow CssClass="sub-heading"><asp:TableCell>Park</asp:TableCell>
                    <asp:TableCell ColumnSpan="2">Facilities</asp:TableCell></asp:TableRow>
                <asp:TableRow CssClass="display-cell">
                    <asp:TableCell RowSpan="2">
                        <asp:CheckBox ID="west" Text="West" runat="server" />
                        <asp:CheckBox ID="central" Text="Central" runat="server" />
                        <asp:CheckBox ID="east" Text="East" runat="server" />

                    </asp:TableCell>
                    <asp:TableCell Width="570px" ColumnSpan="2">
                        <asp:CheckBox ID="CheckBox85" Text="OHP/Simultaneous Board" runat="server" />
                        <asp:CheckBox ID="CheckBox86" Text="Data Projector" runat="server" />
                        <asp:CheckBox ID="CheckBox88" Text="Data Projector x2" runat="server" />
                        <asp:CheckBox ID="CheckBox89" Text="Chalk" runat="server" />
                        <asp:CheckBox ID="CheckBox87" Text="White Board" runat="server" />
                        <asp:CheckBox ID="CheckBox90" Text="Large Board" runat="server" />
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow CssClass="display-cell"><asp:TableCell ColumnSpan="2">
                    
                        <asp:CheckBox ID="CheckBox91" Text="Lecture" runat="server" />
                        <asp:CheckBox ID="CheckBox92" Text="Tiered" runat="server" />
                        <asp:CheckBox ID="CheckBox93" Text="Flat" runat="server" />
                        <asp:CheckBox ID="CheckBox94" Text="Wheelchair" runat="server" /></asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell CssClass="sub-heading">Room Search</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading" >Rooms</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading">Selected Results</asp:TableCell>
                   </asp:TableRow>
                <asp:TableRow CssClass="display-cell" Height="100px">
                    <asp:TableCell><asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></asp:TableCell>
                    <asp:TableCell>Insert Here</asp:TableCell>
                    <asp:TableCell>Insert Here</asp:TableCell>
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                        <asp:Button ID="Button1" runat="server" Text="Left" />
                        <asp:Button ID="Button2" runat="server" Text="Right" />

                    </asp:TableCell>
                    <asp:TableCell>
                    <asp:Button ID="Button5" runat="server" Text="Add Selected" />
                    <asp:Button ID="Button6" runat="server" Text="Clear Selected" />
                    <asp:Button ID="Button7" runat="server" Text="Clear All" />
                    </asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>
                
            </asp:Table>



            <br />
       

        <asp:Table ID="Table4" GridLines="Both" runat="server">
            
            <asp:TableRow><asp:TableCell CssClass="heading" ColumnSpan="20">Weeks Selection</asp:TableCell></asp:TableRow>
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
                <asp:TableCell ID="w1" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w2" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w3" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w4" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w5" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w6" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w7" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w8" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w9" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w10" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w11" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w12" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w13" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w14" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="w15" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="wA12" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="wA15" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="wOdd" CssClass="select-cell"></asp:TableCell>
                <asp:TableCell ID="wEv" CssClass="select-cell"></asp:TableCell>

            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="18">
                    <asp:Button ID="Button4" runat="server" Text="Clear All Week(s)" /></asp:TableCell>
                <asp:TableCell>Semester 1<asp:CheckBox ID="CheckBox20" runat="server" /></asp:TableCell>
                <asp:TableCell>Semester 2<asp:CheckBox ID="CheckBox21" runat="server" /></asp:TableCell>
            </asp:TableRow>
        </asp:Table>
            <br />
            <asp:Table ID="Table3" GridLines="Both" runat="server">
                
            <asp:TableRow><asp:TableCell CssClass="heading" ColumnSpan="11">Days and Periods</asp:TableCell></asp:TableRow>
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
                    <asp:TableCell ID="a1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="a9" CssClass="select-cell"></asp:TableCell>
                

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Monday</asp:TableCell>
                    <asp:TableCell ID="m1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="m9" CssClass="select-cell"></asp:TableCell>
                     <asp:TableCell ID="m10" CssClass="select-cell"></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Tuesday</asp:TableCell>
                     
                    <asp:TableCell ID="t1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="t9" CssClass="select-cell"></asp:TableCell>
                     <asp:TableCell ID="t10" CssClass="select-cell"></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Wednesday</asp:TableCell>
                    <asp:TableCell ID="we1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="we9" CssClass="select-cell"></asp:TableCell>
                     <asp:TableCell ID="we10" CssClass="select-cell"></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Thursday</asp:TableCell>
                    <asp:TableCell ID="th1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="th9" CssClass="select-cell"></asp:TableCell>
                     <asp:TableCell ID="th10" CssClass="select-cell"></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Friday</asp:TableCell>
                    <asp:TableCell ID="f1" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f2" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f3" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f4" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f5" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f6" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f7" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f8" CssClass="select-cell"></asp:TableCell>
                    <asp:TableCell ID="f9" CssClass="select-cell"></asp:TableCell>
                     <asp:TableCell ID="f10" CssClass="select-cell"></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="12"><asp:Button runat="server" Text="Clear All Day(s) and Period(s)" /></asp:TableCell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell ColumnSpan="12" CssClass="msg">Please enter any special requests you have: <asp:TextBox ID="TextBox3" width="500px" height="100px" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
            </asp:Table>

        </asp:Panel>
    </form>
    </div>
    </div>
</body>
</html>
