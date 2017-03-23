/**
 * 3D Text plugin for jQuery
 * v1.0
 * Creates 3D text using CSS3 text-shadows
 *
 * By Craig Buckler, @craigbuckler, http://optimalworks.net
 *
 * As featured on SitePoint.com:
 * http://www.sitepoint.com/css3-3d-text-jquery-plugin/
 *
 * Please use as you wish at your own risk.
 */

/**

* depth is the number of pixels for the 3D extrusion
* angle is the 3D extrude angle, i.e. 90 is vertically downward
* color is the 3D extrusion color
* lighten is the difference in color between the top and bottom of the extrusion, e.g. -0.1 means the color will darken by 10%
* shadowDepth is the approximate number of pixels the shadow extends from the text
* shadowAngle is the angle at which the shadow falls
* shadowOpacity is the initial opacity between 0 (no shadow) and 1 (dark black).Note that multiple shadows overlay one another so you’ll rarely need a number greater than 0.4.

*/

(function($) {

	// jQuery plugin definition
	$.fn.text3d = function(opts) {
	
		// default configuration
		var config = $.extend({}, {
			depth: 1,
			angle: 10,
            color: "#F5F5DC",
			lighten: -0.01,
			shadowDepth: 1,
			shadowAngle: 2,
			shadowOpacity: 0.1
		}, opts);
		
		// to radians
		config.angle = config.angle * Math.PI / 180;
		config.shadowAngle = config.shadowAngle * Math.PI / 180;
		
		// create text shadow
		function TextShadow(e) {
		
			var s = "", i, f, x, y, c;
			
			// 3D effect
			for (i = 1; i <= config.depth; i++) {
				x = Math.round(Math.cos(config.angle) * i);
				y = Math.round(Math.sin(config.angle) * i);
				c = ColorLuminance(config.color, (i-1)/(config.depth-1)*config.lighten);
				s += x+"px "+y+"px 0 "+c+",";
			}
			
			// shadow
			for (f = 1, i = 1; f <= config.shadowDepth; i++) {
				f = f+i;
				x = Math.round(Math.cos(config.shadowAngle) * f);
				y = Math.round(Math.sin(config.shadowAngle) * f);
				c = config.shadowOpacity - ((config.shadowOpacity - 0.1) * i/config.shadowDepth);
				s += x+"px "+y+"px "+f+"px rgba(0,0,0,"+c+"),";
			}
			
			e.style.textShadow = s.substr(0, s.length-1);		
		}
		
		
		// return lighter (+lum) or darker (-lum) color
		function ColorLuminance(hex, lum) {

			// validate hex string
			hex = String(hex).replace(/[^0-9a-f]/gi, '');
			if (hex.length < 6) {
				hex = hex[0]+hex[0]+hex[1]+hex[1]+hex[2]+hex[2];
			}
			lum = lum || 0;
			
			// convert to decimal and change luminosity
			var rgb = "#", c, i;
			for (i = 0; i < 3; i++) {
				c = parseInt(hex.substr(i*2,2), 16);
				c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
				rgb += ("00"+c).substr(c.length);
			}

			return rgb;
		}

		
		// initialization
		this.each(function() {
			TextShadow(this);
		});

		return this;
	};

})(jQuery);


// initialize all expanding textareas
jQuery(function() {
	jQuery(".text3d").text3d();
});
