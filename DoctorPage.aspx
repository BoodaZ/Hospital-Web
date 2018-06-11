
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DoctorPage.aspx.cs" Inherits="DoctorPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">    <!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
    <!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
    <!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
    <!--[if IE 9]> <html class="no-js ie9 oldie" lang="en"> <![endif]-->
    <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
     <title>Home</title>
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
     <form id="Doctor" runat="server">
    <div id="custom-bootstrap-menu" class="navbar navbar-default " role="navigation">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="Doctor.aspx">Hospital Name</a>
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder">
                    <span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span
                        class="icon-bar"></span><span class="icon-bar"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse navbar-menubuilder">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="LoginPage.aspx" style="font-size:large">Logout</a> </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="container">
        <%--                 Get Patient's Wearable  ID                    --%>



      <div class="col-lg-6 col-md-6 col-sm-6 ">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <br />
                        <legend><h2 style="color:white">Information<i class="fa fa-pencil pull-right"></i></h2></legend>
                        
                        <div class="form-group">
                             <asp:Label ID="LblWID" runat="server" Font-Size="Large" Text="Wearable ID" CssClass="col-lg-3 control-label"></asp:Label>

                            <div class="col-lg-4 ">
                            <asp:DropDownList ID="DDLWID" CssClass="form-control"  runat="server" AutoPostBack="True" DataSourceID="WearID" DataTextField="ID" DataValueField="ID" ></asp:DropDownList>
                                <asp:SqlDataSource ID="WearID" runat="server" ConnectionString="<%$ ConnectionStrings:HospitalConnectionString %>" SelectCommand="SELECT [ID] FROM [Wearable]"></asp:SqlDataSource>
                                <asp:EntityDataSource ID="WearableID" runat="server">
                                </asp:EntityDataSource>
                                </div>
                                <div class="col-lg-5">
                                <asp:Button ID="BtnWearInformation" runat="server" Font-Size="Small"  CssClass="btn btn-primary" Text="Get Information" OnClick="BtnWearInformation_Click" />
                                </div>
                        </div>
                            <legend><h2 style="color:white"><i class="fa  pull-right"></i></h2></legend>
                        <div class="form-group">
                             <asp:Label ID="LblPatientName" runat="server" Font-Size="Large" Text="Name" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtPatientName" runat="server" placeholder="Patient Name" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                             <asp:Label ID="LblAge" runat="server" Font-Size="Large" Text="Age" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtAge" runat="server" placeholder="Patient Age" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-group">
                             <asp:Label ID="LblLastDiagonistic" runat="server" Font-Size="Large" Text="Diagonistic" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtLastDiag" runat="server" placeholder="Last Diagonistic" TextMode="MultiLine" Font-Size="Large" Rows="7" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        
                         <div class="form-group">
                            <div class="col-lg-6 col-lg-offset-7">
                                <asp:Button ID="btnEdit" runat="server" CssClass="btn btn-warning" Text="Edit" OnClick="btnEdit_Click" />
                                  <asp:Button ID="btnUpdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnUpdate_Click" />                              
                            </div>
                         </div>
                      </fieldset>
                        </div>
                </div>
            </div>
        <%-- 
        /* ========================== */
        /* ========================== */
        /* ========================== */
            --%>
         <div class="col-lg-6 col-md-6 col-sm-6 col-xs-10">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h2 style="color:white">Life Data<i class="fa fa-pencil pull-right"></i></h2></legend>

                        <div class="form-group">
                             <asp:Label ID="LblID" runat="server" Font-Size="Large" Text="Rate Heart"  CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtID" runat="server" Font-Size="Large" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Lbltemp" runat="server" Font-Size="Large" Text="Temprature" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtTemperature" runat="server"  Font-Size="Large" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="pressure" CssClass="col-lg-3 control-label"></asp:Label>
                            <div class="col-lg-9">
                                <asp:TextBox ID="TxtPressure" runat="server" Font-Size="Large" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label2" runat="server" Font-Size="Large" Text="ECG" CssClass="col-lg-3 control-label"></asp:Label>
                            
                                	   <div class="col-lg-9" id="ecgplot" style='width: 500px; height: 350px;'></div>

                           
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

 <script type="text/javascript" src="js/test/lib/jquery-1.7.2.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.navigate.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.time.js"></script> 

	   <script type="text/javascript" src="js/src/jquery-ecgplot.js"></script>
	   <script type="text/javascript" src="js/test/data/ecg_test_data.js"></script>
	   <script type="text/javascript">
	       var now = new Date();
	       var setting = {
	           data: [],
	           options: {
	               rectangleRatio: 0.2, // the ratio of width/height of the minimum rectangle 
	               axes: {
	                   timeformat: "%M:%S",
	               },
	               ecgLineWidth: {
	                   bold: 1.5,
	                   normal: 0.3
	               },
	               interactive: {
	                   enable: true,
	                   levelRange: {
	                       lower: 5,
	                       upper: 10
	                   }
	               }
	           }
	       };

	       /*{{{*/function formECGSingleSeg(start_timestamp, data_obj) {
	           var ecg_test_data_obj_length = data_obj.data.length;
	           var ecg_data = [];
	           var counter = 0;
	           for (var i = 0; i < ecg_test_data_obj_length ; i++) {
	               // just show 1/5 dataset instead of showing all record
	               var j = 0;
	               // filter out all the resord that marked as status == -1 (indication of package lose)
	               if (data_obj.data[i].status != -1) {
	                   counter++;
	                   var time_index = parseInt(start_timestamp) + 2 * (i * 5 + j);
	                   ecg_data.push([time_index, data_obj.data[i].vol[j]]);
	               }
	           }
	           return ecg_data;
	       }//}}}

	       $(document).ready(function () {
	           setting.data = formECGSingleSeg(now.getTime() + now.getTimezoneOffset(), test_data);

	           var plot = $('#ecgplot').ECGPlot(setting);
	           //bind operations with elements

	       //    $('#zoom_in_btn').click(function () {
	       //        plot.zoom();
	       //        var axes = plot.getAxes();
	       //        var up_xaxes_min = axes.xaxis.min;//.toFixed(2);
	       //        var up_xaxes_max = axes.xaxis.max;//.toFixed(2);
	       //        var up_yaxes_min = axes.yaxis.min;//.toFixed(2);
	       //        var up_yaxes_max = axes.yaxis.max;//.toFixed(2);
	       //        var up_x_range = up_xaxes_max - up_xaxes_min;
	       //        var up_y_range = up_yaxes_max - up_yaxes_min;
	       //        $('#x_current_range').text(up_x_range);
	       //        $('#y_current_range').text(up_y_range);
	       //    });
	       //    $('#zoom_out_btn').click(function () {
	       //        plot.zoomOut();
	       //        var axes = plot.getAxes();
	       //        var up_xaxes_min = axes.xaxis.min;//.toFixed(2);
	       //        var up_xaxes_max = axes.xaxis.max;//.toFixed(2);
	       //        var up_yaxes_min = axes.yaxis.min;//.toFixed(2);
	       //        var up_yaxes_max = axes.yaxis.max;//.toFixed(2);
	       //        var up_x_range = up_xaxes_max - up_xaxes_min;
	       //        var up_y_range = up_yaxes_max - up_yaxes_min;
	       //        $('#x_current_range').text(up_x_range);
	       //        $('#y_current_range').text(up_y_range);
	       //    });

	       });
	   </script>
   

</body>
</html>
