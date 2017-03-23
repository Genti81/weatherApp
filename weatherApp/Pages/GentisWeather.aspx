<%@ Page language="C#" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<WebPartPages:AllowFraming ID="AllowFraming" runat="server" />

<html>
<head>
    <title></title>

    <script src="../Scripts/jquery-3.1.1.min.js"></script>
    <script src="../Scripts/skycons.js"></script>
    <script src="../Scripts/jquery.text3d.js"></script>
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Orbitron" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script src="../Scripts/moment-with-locales.min.js"></script>
    <script src="../Scripts/App.js"></script>
    <link href="../Content/App.css" rel="stylesheet" />
   
</head>
<body style="font-family: 'Open Sans', sans-serif">

    <div class="container">
        <div class="jumbotron jumbo col-md-4 center-block body_image">
                
	            <h1 style="font-family:'Orbitron', cursive;color: beige;"></h1>

                <div class="row">
	                <div class="list-group">
                      <div class="list-group-item back_image">

                          <div class="col-md-4 text3d">
		                       <span id="currentTemp"></span>
                          </div>

                          <div class="col-md-6 pull-right">
                              <span class="pull-right text3d" id="windSpeed"></span>
                          </div>

                        <span class="pull-right text3d" id="RealFeel"></span>

                        <div class="col-md-6">
                              <div class="text-center text3d" id="summaryToday"></div>
                        </div>

                              <canvas id="icon"></canvas>
            
                              <div class="text-center text3d" id="summary_hourly"></div>
                              <div class="text-center text3d pull-left" id="humidity"></div>
                              <div class="text-center text3d" id="tidzon"></div>
                              <a href="Default.aspx">Default.aspx</a>

                      </div>

                   </div>
                </div>

            <div class="row">
            <div class="list-group" style="color:beige;">
                <div class="list-group-item col-md-8 col-md-offset-2 back_image text-center text3d">
                    <span id="current_time"></span><br />
                    <span id="current_date"> </span>
                </div>
            </div>
            </div>
                    <br />

         <div>Forecast 4 Days</div>

        <div class="row"  style="color:silver;">

            <div class="list-group text3d">

                <div class="list-group-item col-md-3 back_image">

                    <canvas class="" id="day1" width="62" height="62"></canvas>
                    <span id="Temp1"></span>

                </div>

                <div class="list-group-item col-md-3 back_image">

                    <canvas class="" id="day2" width="62" height="62"></canvas>
                    <span id="Temp2"></span>

                </div>

                <div class="list-group-item col-md-3 back_image">

                    <canvas class="" id="day3" width="62" height="62"></canvas>
                    <span id="Temp3"></span>
                </div>

                <div class="list-group-item col-md-3 back_image">

                    <canvas class="" id="day4" width="62" height="62"></canvas>
                    <span id="Temp4"></span>
                </div>

            </div>
        </div>

  </div>
</div>



</body>
</html>
