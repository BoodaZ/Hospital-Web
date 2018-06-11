<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPage.aspx.cs" Inherits="LoginPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
     <title>Login</title>
    <link rel="icon" type="image/png"  href="img/89.png"  />
    <!-- ============ Google fonts ============ -->
    <link href='http://fonts.googleapis.com/css?family=EB+Garamond' rel='stylesheet'
        type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300,800'
        rel='stylesheet' type='text/css' />
    <!-- ============ Add custom CSS here ============ -->
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" />

    
</head>
<body>
     <form id="login" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">Hospital Name</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                
            </div>
        </div>
    </div>
    <div class="container">
       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h2 style="color:white">Login<i class="fa fa-pencil pull-right"></i></h2></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="LblID" runat="server" Font-Size="Large" Text="Username" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtID" runat="server" placeholder="Username OR ID" CssClass="form-control"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator id="RFVUserName" runat="server"
                                    ControlToValidate="TxtID"
                                    ErrorMessage="User Name is a required field."
                                    ForeColor="Red"  >
                                    </asp:RequiredFieldValidator>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="LblPassword" runat="server" Font-Size="Large" Text="Password"  CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtPassword" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                
                                <asp:RequiredFieldValidator id="RFVPassword" runat="server"
                                    ControlToValidate="TxtPassword"
                                    ErrorMessage="Password is a required field."
                                    ForeColor="Red"  >
                                    </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <div class="form-group">
                            
                        <div class="form-group">
                             <asp:Label  runat="server" Font-Size="Large"  CssClass="col-lg-12 control-label" ID="LblWarn" ForeColor="#990000"></asp:Label>
                         </div>
                        <div class="form-group">
                            <div class="col-lg-2 col-lg-offset-9">
                                <asp:Button ID="btnSubmit" runat="server" Font-Size="Large"  CssClass="btn btn-primary" Text="Login" OnClick="btnSubmit_Click" />
                                </div>
                            </div>
                      </fieldset>
                        </div>
                </div>
            </div>
        </div>
 <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery.backstretch.js" type="text/javascript"></script>
    <script type="text/javascript">
        'use strict';

        /* ========================== */
        /* ::::::: Backstrech ::::::: */
        /* ========================== */
        // You may also attach Backstretch to a block-level element
        $.backstretch(
        [
            "img/Login.png",
        ],

        {
        }
    );
    </script>


    </form>



</body>
</html>
