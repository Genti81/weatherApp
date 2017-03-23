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
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <%--<script src="../Scripts/skycons.min.js"></script>--%>
    <script src="../Scripts/App.js"></script>
    <link href="../Content/App.css" rel="stylesheet" />
   
</head>
<body>

    <div class="container">
        <div class="jumbotron col-md-4">
            <div class="weatherWrapper">
	            <h1>Weather now</h1>
                <div class="row">
	                <div class="weatherTop">
		                <span id="currentTemp"></span>
                        <span id="summaryToday"></span>
                        <canvas id="icon"></canvas>
                    </div>
                    </div>
                    <br />
             <div>Forecast 4 Days</div>
        <div class="row">
            <div class="list-group col-md-12">
            <canvas class="list-group-item col-md-3" id="day1"></canvas>
            <canvas class="list-group-item col-md-3" id="day2"></canvas>
            <canvas class="list-group-item col-md-3" id="day3"></canvas>
            <canvas class="list-group-item col-md-3" id="day4"></canvas>
        </div>
      </div>
    </div>
  </div>
</div>


</body>
</html>
