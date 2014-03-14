<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Menubar.aspx.cs" Inherits="WebApplication2.Menubar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url(Images/background.jpg);
            background-size: cover;
            background-repeat: no-repeat;
            font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
            font-weight:300;
            text-align: left;
            text-decoration: none;
            height: 500px;
        }

         *{
            margin: 0;
            padding: 0;
            border: none;
            outline: none;
        }
         #logo
{
  padding-top:25px;
  padding-bottom:25px;
  padding-left:30px;
}

#cssmenu {
  background: #333;
  list-style: none;
  margin-left: 30px;
  padding: 0px;
  width: 12em;
}

#cssmenu li {
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  font-weight: 400;
  font-size: 14px;
  margin: 0;
  padding: 0;
  list-style: none;
}

#cssmenu a {
  background: #333;
  border-bottom: 1px solid #393939;
  color: #ccc;
  display: block;
  margin: 0;
  padding: 8px 12px;
  text-decoration: none;
  font-weight: normal;
}

#cssmenu a:hover {
  background: #2580a2 url('Images/hover.gif') left center no-repeat;
  color: #fff;
  padding-bottom: 8px;

  box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
  -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
  -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
}
     </style>
</head>
<body>
          <div id="logo">
           <img src="Images/logo.png" id="logoimg">
      </div>
<div id='cssmenu'>
<ul>
   <li><a href='#'><span>Create Request</span></a></li>
   <li><a href='#'><span>View Request</span></a></li>
   <li><a href='#'><span>Module Management</span></a></li>
   <li><a href='#'><span>Settings</span></a></li>
   <li><a href='#'><span>Help</span></a></li>
</ul>
</div>
</body>
</html>
