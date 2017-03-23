<%-- The following 4 lines are ASP.NET directives needed when using SharePoint components --%>

<%@ Page Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" MasterPageFile="~masterurl/default.master" Language="C#" %>

<%@ Register TagPrefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<%-- The markup and script in the following Content element will be placed in the <head> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">
    <script src="../Scripts/jquery-3.1.1.min.js"></script>
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
    <meta name="WebPartPageExpansion" content="full" />

    <!-- Add your CSS styles to the following file -->
    <link href="../Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="Stylesheet" type="text/css" href="../Content/FullApp.css" />

    <!-- Add your JavaScript to the following file -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <script type="text/javascript" src="../Scripts/App.js"></script>
    <script type="text/javascript" src="../Scripts/moment-with-locales.min.js"></script>
    <%--<script type="text/javascript" src="../Scripts/App.js"></script>--%>
</asp:Content>

<%-- The markup in the following Content element will be placed in the TitleArea of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderPageTitleInTitleArea" runat="server">
</asp:Content>

<%-- The markup and script in the following Content element will be placed in the <body> of the page --%>
<asp:Content ContentPlaceHolderID="PlaceHolderMain" runat="server">

    <div class="container">
        <div class="jumbotron jumbo center-block body_image">

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

</asp:Content>
