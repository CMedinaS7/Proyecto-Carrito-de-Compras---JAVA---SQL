
$(document).ready(function(){
							   
	////////////////////////////////////////////
	function sunset(){
		var	redSky = $('#redsky');
		var	container = $('#sunset');
		var	sun = $('#sun');		
		
		var	dragSun = function(event, ui) 
		{
			sun.LensFlareUpdate();
			var	sx = sun.position().left + sun.width()/2;
			var	sy = sun.position().top + sun.height()/2;				
			var ch = container.height()/2;
			opacity = (sy-ch) / ch;		
			redSky.css('opacity',opacity);
			if( sx > container.width() || sx<0 || sy > container.height() || sy < 0 )
			{
				sun.LensFlareHide();				
			}else			
			{
				sun.LensFlareShow();
			}
		}
		
		$('#sun').draggable( {
			drag: dragSun				
		 } );
		
		$('#sun').LensFlare(  [ 
			{src: '/images/sunset/flare1.png', offset: -0.2, scale:0.3 },	
			{src: '/images/sunset/flare2.png', offset: 0.0, scale:1 },	
			{src: '/images/sunset/flare4.png', offset: 0.45, scale:0.4 },	
			{src: '/images/sunset/flare3.png', offset: 0.4, scale:0.75 },	
			{src: '/images/sunset/flare3.png', offset: 0.3, scale:1.0 },	
			{src: '/images/sunset/flare1.png', offset: 0.8, scale:1 },		
			{src: '/images/sunset/flare4.png', offset: 1.0, scale:1.5 }																		
		] );
		
		dragSun();
	};
	///////////////////////////////////////////////////////
	function space()
	{
		var	sun = $('#sun2');
		var	earth = $('#earth');
		var	dragger = $('#dragger');
		var	earthPos = new Vector2d(earth.position().left + earth.width()/2, earth.position().top + earth.height()/2);
		
		var	dragSun = function(event, ui) 
		{
			sun.css( { left: dragger.position().left, top:dragger.position().top });
			// Work out distance of earth to sun;
			var	v = new Vector2d( earthPos.vx - (sun.position().left + sun.width()/2), earthPos.vy - (sun.position().top + sun.height()/2 ) );
			len = v.len();
			// If overlapping, move back out to edge and hide lens flare.
			if (len < 100)
			{								
				sun.LensFlareHide();
				// If really close, make Sun skirt around edge to avoid losing it behind.
				if(len < 80)
				{
					v.normalise();
					v.mul(80-len);
					sun.css({ left: sun.position().left - v.vx + 'px', top: sun.position().top - v.vy +'px'}); 
				}
			}
			else
			{
				sun.LensFlareShow();
			}
			sun.LensFlareUpdate();			
		}
		
		function dragSunStop()
		{
			dragger.css( {left: sun.position().left + 'px', top: sun.position().top + 'px' });
		}
		$('#dragger').draggable({
				drag: dragSun,
				stop: dragSunStop,
				cursor:'move'
		});
		$('#star').draggable({
				drag: function(){$('#star').LensFlareUpdate();},				
				cursor:'move'
		});
		
		
		$('#star').LensFlare(  [ 
			{src: '/images/sunset/flare1.png', offset: 0.06, scale:0.15 },	
			{src: '/images/sunset/flare3.png', offset: -0.03, scale:0.5 },	
			{src: '/images/sunset/flare4.png', offset: 0.09, scale:0.2 }
			]);
		$('#sun2').LensFlare(  [ 
			{src: '/images/sunset/flare1.png', offset: -0.2, scale:0.3 },	
			{src: '/images/sunset/flare2.png', offset: 0.0, scale:1 },	
			{src: '/images/sunset/flare4.png', offset: 0.45, scale:0.4 },	
			{src: '/images/sunset/flare3.png', offset: 0.4, scale:0.75 },	
			{src: '/images/sunset/flare3.png', offset: 0.3, scale:1.0 },	
			{src: '/images/sunset/flare1.png', offset: 0.8, scale:1 },		
			{src: '/images/sunset/flare4.png', offset: 1.0, scale:1.5 }																		
		] );
	}
	sunset();
	space();
	
});