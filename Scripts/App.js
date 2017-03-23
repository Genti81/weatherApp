'use strict';
$(document).ready(function () {
    var url = 'https://api.darksky.net/forecast/';
    var apiKey = 'd306712144c35cde269e147029ce3adb';
    var unit = 'auto';
    var lati = 59.345237;
    var longi = 18.023431;
    var language = "sv";



    jQuery.ajax({
        url: url + apiKey + "/" + lati + "," + longi + "?callback=?&units=" + unit + "&lang=" + language,
        type: 'GET',
        dataType: 'jsonp',
        timeout: 3000,
        success: function (data) {

            $('#currentTemp').html(data.currently.temperature.toFixed(0) + "&#8451");
            $('#summaryToday').html(data.currently.summary);

            var skycons = new Skycons({ "color": "yellow" });
            var todayIcon = data.currently.icon;

            skycons.set("icon", todayIcon);

            //Forecast

            var day1_icon = data.daily.data[0].icon;
            var day2_icon = data.daily.data[1].icon;
            var day3_icon = data.daily.data[2].icon;
            var day4_icon = data.daily.data[3].icon;

            skycons.set("day1", day1_icon);
            skycons.set("day2", day2_icon);
            skycons.set("day3", day3_icon);
            skycons.set("day4", day4_icon);
            skycons.play();


            //var icons = new Skycons(),
            //    list = [
            //        "clear-day", "clear-night", "partly-cloudy-day",
            //        "partly-cloudy-night", "cloudy", "rain", "sleet", "snow", "wind",
            //        "fog"
            //    ],
            //    i;

            //for (i = list.length; i--;)
            //    icons.set(list[i], list[i]);

            //icons.play();


           
        },
        error: function () {
            $('.weatherWrapper').html('Latest forecast not available, please check the API key');
            $('.forecastWrapper').hide();
        }
    });
});