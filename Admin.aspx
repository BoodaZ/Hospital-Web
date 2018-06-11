<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
     <title>Add Users(Admin)</title>
    <link rel="icon" type="image/png"  href="img/Icon.ico"  />
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
    <form id="FAdmin" runat="server">
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
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="AdminEdit.aspx" style="font-size:large">Edit</a> </li>                    
                    <li><a href="LoginPage.aspx" style="font-size:large">Logout</a> </li>

                </ul>
            </div>
        </div>
      </div>

        <%--Add Wearable--%>
        <div class="container">
       <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h2 style="color:white">Add Wearable<i class="fa fa-pencil pull-right"></i></h2></legend>
                                   
                                <div class="form-group">
                                     <asp:Label ID="Label1" runat="server" Text="Wearable ID" CssClass="col-lg-2 control-label"></asp:Label>
                                     <div class="col-lg-10">
                                          <asp:TextBox ID="TxtWearableID" runat="server" placeholder="Wearable ID" CssClass="form-control"></asp:TextBox>

                                    </div>
                                </div>
                                <div class="form-group">
                                     <asp:Label ID="LblWearablePassword" runat="server" Text="Password" CssClass="col-lg-2 control-label"></asp:Label>
                                     <div class="col-lg-10">
                                          <asp:TextBox ID="TxtWearablePassword" runat="server" placeholder="Wearable Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                                         
                                    </div>
                                </div>
                                <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="BtnAdd" runat="server" CssClass="btn btn-primary" Text="Add" ValidationGroup="VGWearable" OnClick="BtnAdd_Click" />
                                  <asp:Button ID="BtnCancel" runat="server" CssClass="btn btn-warning" Text="Cancel" OnClick="BtnCancel_Click"/>                              
                            </div>
                        </div>        
                        <div class="form-group">
                            <asp:Label runat="server" ID="LblWarn"  CssClass="label-success" ></asp:Label>
                            
                        </div>
                        </fieldset>
                    </div>
                </div>
            </div>
    







        
        <%--Add Employee--%>
        <div class="col-lg-6 col-md-6 col-sm-6 ">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h2 style="color:white">Add Employee<i class="fa fa-pencil pull-right"></i></h2></legend>
                        <div class="form-group">
                             <asp:Label ID="LblName" Font-Size="Larger" runat="server" Text="Name" CssClass="col-lg-2 control-label"></asp:Label>
                            
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtName" runat="server" placeholder="Enter Name" CssClass="form-control"></asp:TextBox>
                            </div>
                            </div>
                            <div class="form-group">
                             <asp:Label ID="LblUSerName" runat="server" Font-Size="Larger" Text="UserName" CssClass="col-lg-2 control-label"></asp:Label>
                        
                                 <div class="col-lg-10">
                                <asp:TextBox ID="TxtUserName" runat="server" placeholder="UserName" CssClass="form-control"></asp:TextBox>
                                </div>
                                </div>
                                <div class="form-group">
                             <asp:Label ID="LblPass" runat="server" Text="Password" Font-Size="Larger" CssClass="col-lg-2 control-label"></asp:Label>
                          
                                     <div class="col-lg-10">
                                <asp:TextBox ID="TxtPassword" runat="server" placeholder="Enter Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                            </div>
                                    </div>
                      
                                <div class="form-group">
                             <asp:Label ID="LblConfirm" runat="server" Text="Confirm" Font-Size="Larger" CssClass="col-lg-2 control-label"></asp:Label>
                               
                                          <div class="col-lg-10">
                                <asp:TextBox ID="TxtConfirmPassword" runat="server" placeholder="Confirm Password" CssClass="form-control"></asp:TextBox>
                             </div>
                                    </div>
                        <div class="form-group">

                            <asp:Label ID="lblPhone" runat="server" Text="Phone" Font-Size="Larger" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtPhone" runat="server" placeholder="Phone" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="LblEmail" runat="server" Text="Email" Font-Size="Larger" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <div class="form-group">
                            <asp:Label ID="LblNationalID" runat="server" Font-Size="Larger" Text="National ID" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtNationalID" runat="server" placeholder="National ID" CssClass="form-control Text" TextMode="MultiLine" Rows="1"></asp:TextBox>
                            
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="Label3" runat="server" Text="Address" Font-Size="Larger" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                <asp:TextBox ID="TxtAdress" runat="server" TextMode="MultiLine" Rows="1" placeholder="Address" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="LblGender" runat="server" Font-Size="Larger" Text="Work" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10">
                                
                                    <label>
                                        <asp:DropDownList ID="DDLType" cssclass="form-control" runat="server">
                                            <asp:ListItem>Doctor</asp:ListItem>
                                            <asp:ListItem>Nurse</asp:ListItem>
                                            <asp:ListItem>Receptionist</asp:ListItem>
                                            <asp:ListItem>Admin</asp:ListItem>
                                        </asp:DropDownList>
                                    </label>
                                
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <asp:Label ID="LblSuccessful" runat="server" Text="" CssClass="col-lg-10 control-label"></asp:Label>
                        </div>
                         <div class="form-group">
                            <div class="col-lg-10 col-lg-offset-2">
                                <asp:Button ID="btnSubmit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btnSubmit_Click"/>
                                  <asp:Button ID="btnClear" runat="server" CssClass="btn btn-warning" Text="Clear" OnClick="btnClear_Click"  />                              
                            </div>
                         </div>
        </fieldset>
                </div>
            </div>
        </div>
    </div>
       

    </form>

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
            duration: 4500,
            fade: 1500
        }
    );
    </script>
</body>
</html>
