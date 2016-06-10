<!--时间控制
    var s = 3;
	function doTime(){
		if(s==0)
		  return false;
		s--;
		document.all['oTime'].innerHTML = s;
		setTimeout('doTime()', 1000);
	}

    onload = function() {
        document.all['oTime'].innerHTML = s; 
        _t = setTimeout('doTime()', 1000);
    }
//-->