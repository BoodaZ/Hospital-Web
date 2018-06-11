<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminEdit.aspx.cs" Inherits="AdminEdit" %>

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
    <style type="text/css">
        .header-center {
            text-align: center;
        }
    </style>
    <style type="text/css">
        .cssWdth {
            width: 150px;
            background-color:white;
            text-align:center;
           color:black;
           font:normal;
           
        }
    </style>
</head>
<body>
    <form id="fAdminEdit" runat="server">
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
                    <li><a href="Admin.aspx" style="font-size:large">Add Employee</a> </li>                    
                    <li><a href="LoginPage.aspx" style="font-size:large">Logout</a> </li>

                </ul>
            </div>
        </div>
      </div>
        <div class="container">
       <div class="col-lg-12 col-md-4 col-sm-4 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                         <legend><h2 style="color:white">Doctors<i class="fa fa-pencil pull-right"></i></h2></legend>
                        <div style="color: #000000; table-layout: auto; vertical-align: middle; text-align: center" align="center" dir="ltr" >
                        <asp:GridView runat="server"  ID="DGDoctor"  DataSourceID="SDSDoctor" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" HorizontalAlign="Center" Width="1025px" AutoGenerateColumns="False" DataKeyNames="ID" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" AllowPaging="True" ForeColor="Black" >
                            <AlternatingRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="White" />
                            <Columns>
                                <asp:CommandField  ShowDeleteButton="True"/>
                                <asp:CommandField  ShowEditButton="True"/>

                                <asp:BoundField DataField="ID" HeaderText="ID" HeaderStyle-CssClass="header-center" InsertVisible="False" ReadOnly="True" SortExpression="ID" ControlStyle-CssClass="cssWdth" >
                                <ControlStyle CssClass="cssWdth"></ControlStyle>

                                <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                                </asp:BoundField>
                                <asp:BoundField DataField="Name" HeaderText="Name" HeaderStyle-CssClass="header-center" SortExpression="Name" ControlStyle-CssClass="cssWdth"  >
                                 <ControlStyle CssClass="cssWdth"></ControlStyle>

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="National_id" HeaderText="National_id" HeaderStyle-CssClass="header-center" SortExpression="National_id" ControlStyle-CssClass="cssWdth"  >
                                <ControlStyle CssClass="cssWdth"></ControlStyle>

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="phone" HeaderText="phone" HeaderStyle-CssClass="header-center" SortExpression="phone"  ControlStyle-CssClass="cssWdth" >
                                <ControlStyle CssClass="cssWdth"></ControlStyle>

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Email" HeaderText="Email" HeaderStyle-CssClass="header-center" SortExpression="Email" ControlStyle-CssClass="cssWdth"  >
                                <ControlStyle CssClass="cssWdth"></ControlStyle>

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                                </asp:BoundField>
                                <asp:BoundField DataField="Address" HeaderText="Address" HeaderStyle-CssClass="header-center" SortExpression="Address" ControlStyle-CssClass="cssWdth" >
                                <ControlStyle CssClass="cssWdth"></ControlStyle>
                                    

                                <HeaderStyle CssClass="header-center"></HeaderStyle>
                                    
                                </asp:BoundField>

                            </Columns>
                            <EditRowStyle  HorizontalAlign="Center" VerticalAlign="Middle" />
                            <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" ForeColor="Black" />
                            <FooterStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#CCCC99" />
                            <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                            <PagerSettings Position="Top" />
                            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                            <RowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#F7F7DE" />
                            <SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Middle" BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                           
                            <SortedAscendingCellStyle BackColor="#FBFBF2" />
                            <SortedAscendingHeaderStyle BackColor="#848384" />
                            <SortedDescendingCellStyle BackColor="#EAEAD3" />
                            <SortedDescendingHeaderStyle BackColor="#575357" />
                           
                            </asp:GridView>
                            
                         <asp:SqlDataSource  ID="SDSDoctor" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" DeleteCommand="DELETE FROM [Doctor] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Doctor] ([Name], [National_id], [phone], [Email], [Address]) VALUES (@Name, @National_id, @phone, @Email, @Address)" SelectCommand="SELECT [ID], [Name], [National_id], [phone], [Email], [Address] FROM [Doctor]" UpdateCommand="UPDATE [Doctor] SET [Name] = @Name, [National_id] = @National_id, [phone] = @phone, [Email] = @Email, [Address] = @Address WHERE [ID] = @ID">
                             <DeleteParameters>
                                 <asp:Parameter Name="Name" Type="String" />
                                 <asp:Parameter Name="National_id" Type="String" />
                                 <asp:Parameter Name="phone" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                                 
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="Name" Type="String" />
                                 <asp:Parameter Name="National_id" Type="String" />
                                 <asp:Parameter Name="phone" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                             </InsertParameters>
                             <UpdateParameters>
                                 <asp:Parameter Name="Name" Type="String" />
                                 <asp:Parameter Name="National_id" Type="String" />
                                 <asp:Parameter Name="phone" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                                 <asp:Parameter Name="ID" Type="Int32" />
                             </UpdateParameters>
                         </asp:SqlDataSource>

                            </div>
                        
                        </fieldset>
                    </div>
        </div>
           </div>
            </div>
        <div class="container">
            <div class="col-lg-12 col-md-4 col-sm-4 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                         <legend><h2 style="color:white">Doctors<i class="fa fa-pencil pull-right"></i></h2></legend>
                        <div style="color: #000000; table-layout: auto; vertical-align: middle; text-align: center" align="center" dir="ltr"  >
                            <asp:GridView runat="server" ID="DGVNurse" dir="ltr" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="ID" DataSourceID="SDSNurse" ForeColor="Black" GridLines="Vertical" Width="1024px" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="ID" HeaderText="ID" InsertVisible="False" ReadOnly="True" ControlStyle-CssClass="cssWdth" SortExpression="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ControlStyle-CssClass="cssWdth" />
                                    <asp:BoundField DataField="National_id" HeaderText="National_id" SortExpression="National_id" ControlStyle-CssClass="cssWdth" />
                                    <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" ControlStyle-CssClass="cssWdth" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" ControlStyle-CssClass="cssWdth" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" ControlStyle-CssClass="cssWdth" />
                                </Columns>
                                <FooterStyle BackColor="#CCCC99"  />
                                <HeaderStyle BackColor="#6B696B" CssClass="cssWdth" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle" />
                                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                <RowStyle BackColor="#F7F7DE" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                <SortedAscendingHeaderStyle BackColor="#848384" />
                                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                <SortedDescendingHeaderStyle BackColor="#575357" />


                            </asp:GridView>
                            <asp:SqlDataSource ID="SDSNurse" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT [ID], [Name], [National_id], [phone], [Email], [Address] FROM [Nurse]" DeleteCommand="DELETE FROM [Nurse] WHERE [ID] = @ID" InsertCommand="INSERT INTO [Nurse] ([Name], [National_id], [phone], [Email], [Address]) VALUES (@Name, @National_id, @phone, @Email, @Address)" UpdateCommand="UPDATE [Nurse] SET [Name] = @Name, [National_id] = @National_id, [phone] = @phone, [Email] = @Email, [Address] = @Address WHERE [ID] = @ID" >
                                <DeleteParameters>
                                 <asp:Parameter Name="Name" Type="String" />
                                 <asp:Parameter Name="National_id" Type="String" />
                                 <asp:Parameter Name="phone" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                                 
                             </DeleteParameters>
                             <InsertParameters>
                                 <asp:Parameter Name="Name" Type="String" />
                                 <asp:Parameter Name="National_id" Type="String" />
                                 <asp:Parameter Name="phone" Type="String" />
                                 <asp:Parameter Name="Email" Type="String" />
                                 <asp:Parameter Name="Address" Type="String" />
                             </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="Name" Type="String" />
                                    <asp:Parameter Name="National_id" Type="String" />
                                    <asp:Parameter Name="phone" Type="String" />
                                    <asp:Parameter Name="Email" Type="String" />
                                    <asp:Parameter Name="Address" Type="String" />
                                    <asp:Parameter Name="ID" Type="Int32" />
                                </UpdateParameters>

                            </asp:SqlDataSource>
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
