<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Nurse.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <meta charset="utf-8">
    <!-- Set the viewport width to device width for mobile -->
     <title>Nurse</title>
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
    <form id="FNurse" runat="server">
    <div>
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
                    
                    <li><a href="LoginPage.aspx">Logout</a> </li>
                </ul>
            </div>
        </div>
    </div>
    </div>


         <div class="container">
        <div class="col-md-3">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable A<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="LblID" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TxtID" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="LblPassword" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TxtPassword" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label1" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label2" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>

                            </div>

                                

                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox1" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox2" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>



               <div class="col-md-3">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable B<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label3" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label4" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label5" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox4" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label6" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox3" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox4" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>
                     <div class="col-md-3">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable D<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label7" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox5" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label8" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label9" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox7" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label10" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap2" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox5" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox6" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>
                     <div class="col-md-3">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable C<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label11" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox8" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label12" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox9" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label13" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox10" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label14" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap3" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox7" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox8" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>

        </div>
                        

        <div class="container">
        <div class="col-md-3 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable A<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label15" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox11" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label16" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox12" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label17" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox13" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label18" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap4" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox9" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox10" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>



               <div class="col-md-3 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable B<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label19" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox14" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label20" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox15" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label21" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox16" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label22" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap5" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox11" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox12" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>
                     <div class="col-md-3 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable D<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label23" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox17" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label24" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox18" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label25" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox19" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label26" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap6" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox13" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox14" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>
                     <div class="col-md-3 col-xs-12">
            <div class="registrationform">
                <div class="form-horizontal">
                    <fieldset>
                        <legend><h4 style="color:white">Wearable C<i class="fa fa-pencil pull-right"></i></h4></legend>
                          
                        <div class="form-group">
                             <asp:Label ID="Label27" runat="server" Font-Size="Small" Text="RateHeart" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox20" runat="server" Font-Size="Small" ReadOnly="true" placeholder="BPM" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                       
                        
                         <div class="form-group">
                             <asp:Label ID="Label28" runat="server" Font-Size="Small" Text="Temprature" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox21" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Temprature by ْC" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                         <div class="form-group">
                             <asp:Label ID="Label29" runat="server" Font-Size="Small" Text="pressure" CssClass="col-lg-4 control-label"></asp:Label>
                            <div class="col-lg-8">
                                <asp:TextBox ID="TextBox22" runat="server" Font-Size="Small" ReadOnly="true" placeholder="Blood pressure" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                            <div class="form-group">
                             <asp:Label ID="Label30" runat="server" Font-Size="Small" Text="ECG" CssClass="col-lg-2 control-label"></asp:Label>
                            <div class="col-lg-10" >
                                <asp:ImageMap ID="ImageMap7" runat="server" ImageUrl="~/img/89.png" CssClass="col-lg-12" ></asp:ImageMap>
                            </div>
                        </div>
                           <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox15" runat="server" Text="Task 1" />
                                    </label>
                                </div>
                        <div class="checkbox">
                                    <label>
                                        <asp:CheckBox ID="CheckBox16" runat="server" Font-Size="Small" Text="Task 2" />
                                    </label>
                                </div>
                      </fieldset>
                        </div>
                </div>
            </div>

        </div>





 <script type="text/javascript" src="lib/jquery-1.7.2.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.time.js"></script>
	   <script language="javascript" type="text/javascript" src="js/test/lib/flot/jquery.flot.navigate.js"></script> 

	   <script type="text/javascript" src="js/src/jquery-ecgplot.js"></script>
	   <script type="text/javascript" src="js/test/data/ecg_test_data.js"></script>
	  
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
            ////"img/colorful.jpg",
            ////"img/34.jpg",
            ////"img/images.jpg"
        ],

        {
        }
    );
    </script>
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

                 $('#zoom_in_btn').click(function () {
                     plot.zoom();
                     var axes = plot.getAxes();
                     var up_xaxes_min = axes.xaxis.min;//.toFixed(2);
                     var up_xaxes_max = axes.xaxis.max;//.toFixed(2);
                     var up_yaxes_min = axes.yaxis.min;//.toFixed(2);
                     var up_yaxes_max = axes.yaxis.max;//.toFixed(2);
                     var up_x_range = up_xaxes_max - up_xaxes_min;
                     var up_y_range = up_yaxes_max - up_yaxes_min;
                     $('#x_current_range').text(up_x_range);
                     $('#y_current_range').text(up_y_range);
                 });
                 $('#zoom_out_btn').click(function () {
                     plot.zoomOut();
                     var axes = plot.getAxes();
                     var up_xaxes_min = axes.xaxis.min;//.toFixed(2);
                     var up_xaxes_max = axes.xaxis.max;//.toFixed(2);
                     var up_yaxes_min = axes.yaxis.min;//.toFixed(2);
                     var up_yaxes_max = axes.yaxis.max;//.toFixed(2);
                     var up_x_range = up_xaxes_max - up_xaxes_min;
                     var up_y_range = up_yaxes_max - up_yaxes_min;
                     $('#x_current_range').text(up_x_range);
                     $('#y_current_range').text(up_y_range);
                 });

             });
	   </script>

    </form>
</body>
</html>
