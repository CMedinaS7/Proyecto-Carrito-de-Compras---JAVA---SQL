/**
 * @author divonei
 */

var d=document, imgs = new Array(), zInterval = null, pause=false, cOpacity=1.00, nOpacity=0;//current=2,
var menu, nIndex, fadeInterval, backCourse=false, current=0, pause=false;

function ImgOpacity(IMGobj) {
		if(IMGobj.xOpacity>.99) {
			IMGobj.xOpacity = .99;
			return;
		}
		IMGobj.style.opacity = IMGobj.xOpacity;
		IMGobj.style.MozOpacity = IMGobj.xOpacity;
		IMGobj.style.filter = "alpha(opacity=" + (IMGobj.xOpacity*100) + ")";
}

function so_init() {	
	if(!d.getElementById || !d.createElement)return;	
	imgs = d.getElementById("splash").getElementsByTagName("img");
	for(i=1;i<imgs.length;i++) imgs[i].xOpacity = 0;
	imgs[current].style.display = "block";
	imgs[current].xOpacity = .99;
	
	var input = document.getElementById('q');
	input.setAttribute('type', 'search');
	//setTimeout(so_xfade,5000);
	
	nIndex = current;
	iniCross();
	//hotnews();
}

function so_xfade() {
		
	if(!backCourse)
		nIndex = imgs[current+1]?current+1:0;	
		
	cOpacity-=.05; 
	nOpacity+=.05;
	
	imgs[nIndex].style.display = "block";
	imgs[current].xOpacity = cOpacity;
	imgs[nIndex].xOpacity = nOpacity;
	
	ImgOpacity(imgs[current]); 
	ImgOpacity(imgs[nIndex]);		
	if(cOpacity<=0) {
		imgs[current].style.display = "none";		
		current = nIndex;
		cOpacity = 1.00;
		nOpacity = 0;
		backCourse = false;
		clearInterval(fadeInterval);
		iniCross('');
	} else {
		fadeInterval = setTimeout(so_xfade,50);	
	}	
}

function iniCross(prev_next){
	if(!pause){
		clearInterval(zInterval);
	 	zInterval =setTimeout("so_xfade()", 1000*8);
	}
	if(prev_next=='Next'){		
		so_xfade();
	}
	else if(prev_next=='Previous'){																			
				nIndex--;								
				if(nIndex<0){
					nIndex = (imgs.length)-1;
				}
				backCourse = true;
		
			so_xfade();
		
					
		}	
}

function Start(){	
	pause = false;	
	iniCross('');
}

function Stop(){	
	clearTimeout(zInterval);
	pause = true;
	iniCross('');
}

window.addEventListener?window.addEventListener("load",so_init,false):window.attachEvent("onload",so_init);
