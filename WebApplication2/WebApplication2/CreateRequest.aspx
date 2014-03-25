<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CreateRequest.aspx.cs" Inherits="WebApplication2.test" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <link href="CreateRequestStyle.css" rel="stylesheet" type="text/css" />
  <div class="title">
          <h1>Create Request Page</h1>

      </div>
<div class="container">
<asp:Panel cssclass="panel" ID="Panel1" runat="server" >
    <br/>
        <asp:Table ID="SearchTable" class="table" CellPadding="5" GridLines="Both" runat="server">
        <asp:TableRow  CssClass="sub-heading">
            <asp:TableCell>Module Search</asp:TableCell>
            <asp:TableCell>Room Capacity</asp:TableCell>
        </asp:TableRow>
        <asp:TableRow height="100px"><asp:TableCell CssClass="display-cell"> <label for="ModCode">Module Code </label>
  <input id="ModCode"/> </asp:TableCell>
            
            <asp:TableCell CssClass="display-cell"><asp:TextBox placeholder="Enter Minimum Capacity" ID="MinCapacity" class="MinCapacity" runat="server"></asp:TextBox></asp:TableCell>

        </asp:TableRow>
        </asp:Table>

    
            <br />
            <asp:Table ID="FacilitiesTable" GridLines="Both" CssClass="table" runat="server">
                
                <asp:TableRow CssClass="sub-heading"><asp:TableCell ColumnSpan="6">Park</asp:TableCell>
                    </asp:TableRow>
                <asp:TableRow>
                    
                   
                    <asp:TableCell >
                        <input id="west" type="checkbox" />West
                    </asp:TableCell>
                    <asp:TableCell>
                        <input id="central" type="checkbox" />Central
                    </asp:TableCell>
                    <asp:TableCell>
                        <input id="east" type="checkbox" />East
                    </asp:TableCell>
                     <asp:TableCell CssClass="no-border"></asp:TableCell>
                    <asp:TableCell></asp:TableCell>
                </asp:TableRow>

                <asp:TableRow CssClass="sub-heading"><asp:TableCell ColumnSpan="6">Facilities</asp:TableCell></asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <input id="cbOHP" type="checkbox" />
                        OHP/Simultaneuos Board 
                        </asp:TableCell>
                    <asp:TableCell>
                        <input id="cbDP" type="checkbox" />
                        Data Projector
                        </asp:TableCell>
                    <asp:TableCell>
                        <input id="cbDP2" type="checkbox" />
                        Data Projector X2
                        </asp:TableCell>
                    <asp:TableCell>
                        <input id="cbCH" type="checkbox" />
                        Chalk
                    </asp:TableCell>
                    <asp:TableCell>
                        <input id="cbWB" type="checkbox" />
                        White Board
                        </asp:TableCell>
                     </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell><input id="cbLB" type="checkbox" />Large Board</asp:TableCell>
                    <asp:TableCell><input id="cbL" type="checkbox" />Lecture</asp:TableCell>
                    <asp:TableCell><input id="cbS" type="checkbox" />Seminar</asp:TableCell>
                    <asp:TableCell><input id="cbT" type="checkbox" />Tiered</asp:TableCell>
                    <asp:TableCell><input id="cbF" type="checkbox" />Flat</asp:TableCell>
                    <asp:TableCell><input id="cbWC" type="checkbox" />Wheelchair</asp:TableCell>

               </asp:TableRow>
                
            </asp:Table>
            <asp:Table ID="Table1" GridLines="Both" CssClass="table" runat="server">
                <asp:TableRow><asp:TableCell CssClass="sub-heading">Room Search</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading" >Rooms</asp:TableCell>
                    <asp:TableCell CssClass="sub-heading">Selected Results</asp:TableCell>
                   </asp:TableRow>
                <asp:TableRow Height="100px">
                    <asp:TableCell><label for="tags">Tags: </label>  <input id="tags1"/></asp:TableCell>
                    <asp:TableCell>   
                        <input type="button" class="button" id="AddRoom" value="Add Room" onclick="AddSelRoom();" />
                        <br />
                        <input type="button" class="button" id="RemoveRoom" value="Remove Room" onclick="RemoveSelRoom();" />
                     </asp:TableCell>
                    <asp:TableCell>
                        <div id="RoomSel">
                            <select id="SelectedRooms" size="5"></select>
                        </div>
                    </asp:TableCell>
                      
                        

                   
                    
                </asp:TableRow>

                <asp:TableRow>
                    <asp:TableCell>
                     
                    </asp:TableCell>
                    
                    <asp:TableCell>
                
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
                   <asp:TableCell><input id="WeekCheckBox1" type="checkbox" /></asp:TableCell>                
                <asp:TableCell><input id="WeekCheckBox2" type="checkbox" /></asp:TableCell>                
                <asp:TableCell><input id="WeekCheckBox3" type="checkbox" /></asp:TableCell>                
                <asp:TableCell><input id="WeekCheckBox4" type="checkbox" /></asp:TableCell>     
                <asp:TableCell><input id="WeekCheckBox5" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox6" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox7" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox8" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox9" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox10" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox11" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox12" type="checkbox" /></asp:TableCell>
                 <asp:TableCell><input id="WeekCheckBox13" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox14" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox15" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBoxAll1-12" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox1All1-15" type="checkbox" /></asp:TableCell>
                <asp:TableCell><input id="WeekCheckBox1Odd" type="checkbox" /></asp:TableCell>           
                <asp:TableCell><input id="WeekCheckBox1Even" type="checkbox" /></asp:TableCell>


            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="18">
                   <button type ="button" onclick="ClearAllWeeks()">Clear All Weeks</button></asp:TableCell>
                <asp:TableCell><input id="Semester1" type="checkbox" />Semester 1</asp:TableCell>
                <asp:TableCell><input id="Semester2" type="checkbox" />Semester 2</asp:TableCell>
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
                    <asp:TableCell><input id="CheckBoxA1" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA2" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA3" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA4" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA5" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA6" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA7" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA8" type="checkbox" /></asp:TableCell>
                    <asp:TableCell><input id="CheckBoxA9" type="checkbox" /></asp:TableCell>

                

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Monday</asp:TableCell>

                     <asp:TableCell><input id="CheckBoxM1" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM2" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM3" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM4" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM5" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM6" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM7" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM8" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM9" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxM10" type="checkbox" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Tuesday</asp:TableCell>
                     
                   <asp:TableCell><input id="CheckBoxT1" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT2" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT3" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT4" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT5" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT6" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT7" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT8" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT9" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxT10" type="checkbox" /></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Wednesday</asp:TableCell>
                  <asp:TableCell><input id="CheckBoxW1" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW2" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW3" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW4" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW5" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW6" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW7" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW8" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW9" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxW10" type="checkbox" /></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Thursday</asp:TableCell>
                    <asp:TableCell><input id="CheckBoxTH1" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH2" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH3" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH4" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH5" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH6" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH7" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH8" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH9" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxTH10" type="checkbox" /></asp:TableCell>

                </asp:TableRow>
                 <asp:TableRow>
                    <asp:TableCell CssClass="sub-heading" >Friday</asp:TableCell>
                      <asp:TableCell><input id="CheckBoxF1" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF2" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF3" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF4" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF5" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF6" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF7" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF8" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF9" type="checkbox" /></asp:TableCell>
                     <asp:TableCell><input id="CheckBoxF10" type="checkbox" /></asp:TableCell>

                </asp:TableRow>
                <asp:TableRow><asp:TableCell ColumnSpan="12">
                   <button type ="button" onclick="ClearAllDays()">Clear All Days and Periods</button>
                    <button type ="button" onclick="AddSelectedTimeSlot()">Add Selected Time Slots</button>
                     <button type ="button" onclick="DeleteSelectedTimeSlot()">delete Selected Time Slots</button>
                              </asp:TableCell>

                    <asp:TableCell ></asp:TableCell>


                </asp:TableRow>
                <asp:TableRow >
                    <asp:TableCell  ColumnSpan="12" >
                        <select id="AddSelectedTimeSlotArea" size="5" >&nbsp;</select>
                      </asp:TableCell>

                </asp:TableRow>
                <asp:TableRow><asp:TableCell CssClass="sub-heading" ColumnSpan="12">Please enter any special requests you have: </asp:TableCell></asp:TableRow>
                <asp:TableRow><asp:TableCell><textarea id="specialRequest_TB" rows="2" cols="20"></textarea></asp:TableCell></asp:TableRow>
            <asp:TableRow><asp:tablecell>  <button type ="button" onclick ="ClearSpecialRequirements()">Clear Special Requirements</button></asp:tablecell></asp:TableRow>
                
                <asp:TableRow><asp:TableCell ColumnSpan="12">
                  <button type ="button" onclick="ClearAll()">Clear All</button>
                <asp:Button runat="server" CssClass="button" Text="Submit" /></asp:TableCell>
            </asp:TableRow>
            </asp:Table>
            </asp:Panel>
        </div>
       
    
</asp:Content>
