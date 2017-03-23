'use strict';
$(document).ready(function () {
    var url = 'https://api.darksky.net/forecast/';
    var apiKey = 'd306712144c35cde269e147029ce3adb';
    var unit = 'auto';
    var lati = 59.345237;
    var longi = 18.023431;
    var language = "en";



    jQuery.ajax({
        url: url + apiKey + "/" + lati + "," + longi + "?callback=?&units=" + unit + "&lang=" + language,
        type: 'GET',
        dataType: 'jsonp',
        timeout: 3000,
        success: function (data) {
            moment.locale("sv");

            //if ();
            

            var skycons = new Skycons({ "color": "#FFD700" });
            var todayIcon = data.currently.icon;

            $('.jumbo > h1').html("Genti's weather App");

            var myVar = setInterval(myTimer, 1000);

            function myTimer() {

            skycons.set("icon", todayIcon);
         
            $('#current_time').html(moment().format('HH:mm'));
            $('#currentTemp').html(data.currently.temperature.toFixed(0) + "&#8451");
            $('#RealFeel').html("RealFeel&#174; " + data.currently.apparentTemperature.toFixed(0) + "&#8451");
            $('#windSpeed').html("wind: " + data.currently.windSpeed.toFixed(2) + " m/s");
            $('#summaryToday').html(data.currently.summary);
            $('#humidity').html("humidity: " + data.currently.humidity + "%");
            $('#summary_hourly').html(data.currently.summary);
            $('#tidzon').html(data.timezone);

             //Forecast
            var day1_icon = data.daily.data[0].icon;
            $('#Temp1').html(data.daily.data[0].temperatureMin.toFixed(0) + "&#8451" + "/" + data.daily.data[0].temperatureMax.toFixed(0) + "&#8451");
            var day2_icon = data.daily.data[1].icon;
            $('#Temp2').html(data.daily.data[1].temperatureMin.toFixed(0) + "&#8451" + "/" + data.daily.data[1].temperatureMax.toFixed(0) + "&#8451");
            var day3_icon = data.daily.data[2].icon;
            $('#Temp3').html(data.daily.data[2].temperatureMin.toFixed(0) + "&#8451" + "/" + data.daily.data[2].temperatureMax.toFixed(0) + "&#8451");
            var day4_icon = data.daily.data[3].icon;
            $('#Temp4').html(data.daily.data[3].temperatureMin.toFixed(0) + "&#8451" + "/" + data.daily.data[3].temperatureMax.toFixed(0) + "&#8451");
            $('#current_date').html(moment().format('MMMM YYYY'));
            
            skycons.set("day1", day1_icon);
            skycons.set("day2", day2_icon);
            skycons.set("day3", day3_icon);
            skycons.set("day4", day4_icon);
            }

            skycons.play();
     
        },
        error: function () {
            $('.weatherWrapper').html('Latest forecast not available, please check the API key');
            $('.forecastWrapper').hide();
        }
    });
});