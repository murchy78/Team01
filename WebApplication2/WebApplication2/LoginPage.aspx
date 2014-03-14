<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="WebApplication2.LoginPage" %>

<!DOCTYPE html>
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body{
            background-image:url("Images\background.jpg");
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

        #wrapper{
            width: 300px;
            height: 400px;
            margin: 70px auto;
        }

        .login-form{
            width: 300px;
            margin: 0 auto;
            position: relative;

            background: #f3f3f3;
            border: 1px solid #fff;
            border-radius: 5px;

            box-shadow: 0 1px 3px rgba(0,0,0,0.5);
            -moz-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
            -webkit-box-shadow: 0 1px 3px rgba(0,0,0,0.5);
        }

        .login-form .header
{
  padding-top: 25px;
  padding-bottom: 30px;
  padding-right: 30px;
  padding-left: 30px;
}

.login-form .header h1
{
  font-family:'Bree Serif', serif;
  font-weight: 300;
  font-size: 32px;
  line-height: 34px;
  color: #414848;
  text-shadow: 1px 1px 0 rgba(256,256,256,1.0);
  margin-bottom: 10px;
}

.login-form .header span
{
  font-size: 13px;
  line-height: 16px;
  color: #678889;
  text-shadow: 1px 1px 0 rgba(256,256,256,1.0);
}

.login-form .content
{
  padding: 0 30px 25px 30px;
}

.login-form .content .input
{
  width: 188px;
  padding: 15px 25px 20px 20px;
  
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  font-weight: 400;
  font-size: 14px;
  color: #9d9e9e;
  text-shadow: 1px 1px 0 rgba(256,256,256,1.0);

  background:#fff;
  border: 1px solid #fff;
  border-radius: 5px;
  
  box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
  -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
  -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
}

.login-form .content .input::-webkit-input-placeholder
{
  color: #8D9191;
}

.login-form .content .input::-moz-input-placeholder
{
  color: #8D9191;
}

.login-form .content .password, .login-form .content .pass-icon
{
  margin-top: 25px;
}

.login-form .content .input:hover
{
  background: #E6C1E6;
  color: #414848;
}

.login-form .content .input:focus
{
  background: #E6C1E6;
  color: #414848;
  
  box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
  -moz-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
  -webkit-box-shadow: inset 0 1px 2px rgba(0,0,0,0.25);
}

.login-form .footer 
{
  padding: 25px 30px 40px 30px;
  overflow: auto;
  
  background: #d4dedf;
  border-top: 1px solid #fff;
  
  box-shadow: inset  1px 0 rgba(0,0,0,0.15);
  -moz-box-shadow: inset  1px 0 rgba(0,0,0,0.15);
  -webkit-box-shadow: inset  1px 0 rgba(0,0,0,0.15);
}

.login-form .footer .button
{
  float: right;
  padding: 11px, 25px;
  width:70px;
  height:40px;

  font-family: 'Bree Serif', serif;
  font-weight: 300;
  font-size: 18px;
  color: #fff;
  text-shadow: 1px 1px 0 rgba(0,0,0,0.25);
  
  background: #56c2e1;
  border: 1px solid #46b3d3;
  border-radius: 5px;
  cursor: pointer;
  
  box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
  -moz-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
  -webkit-box-shadow: inset 0 0 2px rgba(256,256,256,0.75);
}

.login-form .footer .button:hover
{
  background: #3f9db8;
  border: 1px solid rgba(256,256,256,0.75);

  box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
  -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
  -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.5);
}

.login-form .footer .forgot
{
  display: block;
  float: right;
  padding: 10px;
  margin-right: 20px;
  
  background: none;
  border: none;
  cursor: pointer;
  
  font-family: 'Bree Serif', serif;
  font-weight: 300;
  font-size: 18px;
  color: #414848;
  text-shadow: 0px 1px 0 rgba(256,256,256,0.5);
}

.login-form .footer .forgot:hover
{
  color: #3f9db8;
}

#logo
{
  padding-top:25px;
  padding-bottom:25px;
  padding-left:30px;
}

#DropDownList1{
  width: 188px;
  padding: 15px 25px 20px 20px;
  
  font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif;
  font-weight: 400;
  font-size: 14px;
  color: #9d9e9e;
  text-shadow: 1px 1px 0 rgba(256,256,256,1.0);

  background:#fff;
  border: 1px solid #fff;
  border-radius: 5px;
  
  box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
  -moz-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
  -webkit-box-shadow: inset 0 1px 3px rgba(0,0,0,0.50);
}
    </style>
</head>
<body>
      <div id="logo">
           <img src="Images\logo.png" id="logoimg" />
      </div>
      
      <div id="wrapper">

           <form name="login-form" class="login-form" action="" method="post">
           
           <div class="header">
                <h1>Team 01</h1>
                <span> Pease pick your department and enter your password to proceed.</span>
           </div>
           
           <div class="content">
                
                <input name="username" type="text" class="input username" placeholder="Username" />

                <input name="password" type="password" class="input password" placeholder="Password" />
                
           </div>
           
           <div class="footer">
           
                <input type="submit" name="submit" value="Login" class="button" />

                <input type="submit" name="submit" value="Forgot Password" class="forgot" />
           </div>
           </form>

      </div>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Login Page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style4">UserName:</td>
                <td>
                    <asp:DropDownList ID="DropDownListUsers" runat="server" DataSourceID="Team01Data" DataTextField="UserName" DataValueField="UserName" Width="180px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="Team01Data" runat="server" ConnectionString="<%$ ConnectionStrings:team01Database %>" SelectCommand="SELECT [UserName] FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td>
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="Please Enter A Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="ButtonLogin" runat="server" OnClick="ButtonLogin_Click" Text="Login" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:team01Database %>" ProviderName="<%$ ConnectionStrings:team01Database.ProviderName %>" SelectCommand="SELECT [User].* FROM [Users]"></asp:SqlDataSource>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
