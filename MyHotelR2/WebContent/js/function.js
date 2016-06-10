
//=================================================================================================
function check()
{//反选
    for(var i=0;i<document.form1.list.length;i++)
    {
        if (document.form1.list[i].checked==false)
        {
              document.form1.list[i].checked=true;
        }
        else
        {
            document.form1.list[i].checked=false;
        }
    }
    if(document.form1.list.length==undefined)
    {
        if(document.form1.list.checked==false)
        {
              document.form1.list.checked=true;
        }
        else
        {
            document.form1.list.checked=false;
        }
    }
} 

function checkall()
{//全选

    for(var i=0;i<document.form1.list.length;i++)
    {
        if(document.form1.list[i].checked==false)
        {
              document.form1.list[i].checked=true;
        }
    }
    if(document.form1.list.length==undefined)
    {
          document.form1.list.checked=true;
    }
}

function setTab(name,cursel,n){
 for(i=1;i<=n;i++){
  var menu=document.getElementById(name+i);
  var con=document.getElementById("con_"+name+"_"+i);
  menu.className=i==cursel?"hover":"";
  con.style.display=i==cursel?"block":"none";
 }
}

function CheckForm()
{
    if(document.form1.list.length==undefined)
    {
        if(document.form1.list.checked==false){
        alert("你还没有选择要删除的项！");
        return false;}
    }
    else
    {
        var index = 0;
        for (var i=0;i<document.form1.list.length;i++)
        {
            if(document.form1.list[i].checked==true)
            {
                index++;
                break;
            }
        }
        if(index==0)
        {
            alert("你还没有选择要删除的项！");
            return false;
        }
    }
}

//=================================================================================================
//获取URL参数
function getQueryString(name) {  

// 如果链接没有参数，或者链接中不存在我们要获取的参数，直接返回空   
if(location.href.indexOf("?")==-1 || location.href.indexOf(name+'=')==-1)  
{         return '';     }   
// 获取链接中参数部分 
var queryString = location.href.substring(location.href.indexOf("?")+1);   
// 分离参数对 ?key=value&key2=value2   
var parameters = queryString.split("&");    
var pos, paraName, paraValue;   
for(var i=0; i<parameters.length; i++)  
{        
// 获取等号位置    
pos = parameters[i].indexOf('=');     
if(pos == -1) { continue; }       
// 获取name 和 value     
paraName = parameters[i].substring(0, pos);    
paraValue = parameters[i].substring(pos + 1);      
// 如果查询的name等于当前name，就返回当前值，同时，将链接中的+号还原成空格     
if(paraName == name)      
{             return unescape(paraValue.replace(/\+/g, " "));         }     }     return ''; }; 

		
//=================================================================================================
//拖动层
var Obj=''
document.onmouseup=MUp
document.onmousemove=MMove
function MDown(Object){
Obj=Object.id
document.all(Obj).setCapture()
pX=event.x-document.all(Obj).style.pixelLeft;
pY=event.y-document.all(Obj).style.pixelTop;}
function MMove(){
if(Obj!=''){
document.all(Obj).style.left=event.x-pX;
document.all(Obj).style.top=event.y-pY;}}
function MUp(){
if(Obj!=''){
document.all(Obj).releaseCapture();
Obj='';}}

//=================================================================================================		
//权限选择
function selevel(){
var obj=document.form1.jibie.checked;
if (obj){
	
document.getElementById('subsystem1').style.display='none';

}
else{
document.getElementById('subsystem1').style.display='';

}
}

function quanxian(sobj)
{
	
  var obj=document.getElementById(sobj).checked;
  

  
 if (obj){
	
  for (var i=0;i<document.form1(sobj).length;i++)

   {
     if (document.form1(sobj)[i].checked==false)
	     {document.form1(sobj)[i].checked=true;}
	}
	
	    }
   
 else
  {
	 for (var i=0;i<document.form1(sobj).length;i++)
	 {
           if (document.form1(sobj)[i].checked==true){document.form1(sobj)[i].checked=false;}
	 }


 
  }
}
//=================================================================================================
// 新闻、文章的复制文本函数
function ContentSize(size)
{
var obj=document.getElementById("size");obj.style.fontSize=size+"px";
}

function copyText(obj) 
{
var rng = document.body.createTextRange();rng.moveToElementText(obj);rng.scrollIntoView();rng.select();rng.execCommand("Copy");rng.collapse(false);
}

function bookshowLen(obj)
{document.getElementById("wordsLen").value=obj.value.length;}
function bookcount(message,total,used,remain)
{
	var max;
	max = total.value;
	if (message.value.length > max) {
	message.value = message.value.substring(0,max);
	used.value = max;
	remain.value = 0;
	alert("内容不能超过" +max+ "个字!");
	}
	else {
	used.value = message.value.length;
	remain.value = max - used.value;
	}
}

//层轮换

function secBoard(n)
{
  for(i=0;i<secTable.cells.length;i++){
    secTable.cells[i].className="sec1";
  secTable.cells[n].className="sec2";}
  
    for(i=0;i<3;i++){
		var d,d1
		d= "c"+i;
		d1= "c"+n;
    d.style.display="none";
   d1.style.display="";}

}

//弹出窗口
function Open_NewWindow(URL) 
{ 
window.open (URL, "newwindow", "height=530, width=480, top=30, left=150, toolbar=no, menubar=no, scrollbars=no, resizable=auto,location=no, status=no")
} 
function Open_NewWindow2(URL) 
{ 
window.open (URL, "newwindow", "height=600, width=710, top=30, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=auto,location=no, status=no")
} 
function Open_NewWindow3(URL) 
{ 
window.open (URL, "newwindow", "height=200, width=150, top=300, left=100, toolbar=no, menubar=no, scrollbars=yes, resizable=auto,location=no, status=no")
} 
//折叠菜单
	function flx(tdid,ico){
		if(document.all[tdid].style.display =='block'){
			document.all[tdid].style.display='none';
			document.all[ico].src='IMAGES/ico_23_a.gif'
		};
		else{
			document.all[tdid].style.display='block';
			document.all[ico].src='IMAGES/ico_23_b.gif';
		};
	}
	function flex(){
	if(left.style.display=='none'){
		left.style.display='block';
	}
	else{
		left.style.display='none';
	}
}

//批量生成表格
   function   setid()   
        {   
        str='<br>';   
        if(!window.form1.upcount.value)   
          window.form1.upcount.value=1;   
        for(i=1;i<=window.form1.upcount.value;i++)   
              str+='图片'+i+':<input   type="file"   name="tp'+i+'"   style="width:400"   class="tx1"><br><br>';   
        window.upid.innerHTML=str+'<br>';   
        }   
		
		 function   setid2()   
        {   
        str='<br>';   
        if(!window.form1.x_day.value)   
          window.form1.x_day.value=1;   
        for(i=1;i<=window.form1.x_day.value;i++)   
              str+='第'+i+'天:<textarea name="a_content'+i+'" cols="50" rows="4" wrap="VIRTUAL"></textarea> 日期：<input   type="text"   name="a_date'+i+'"  size="10" style=" cursor:hand" onClick="calendar()"   class="tx1"> 住宿：<input   type="text"   name="a_rest'+i+'"      class="tx1"><br>';   
        window.upid2.innerHTML=str+'<br>';   
        }   
		
//email批量上传附件

var i=0;
      function addFile() {
		 
      	i++;

     currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= '<input type="file" name="tp'+i+'" >&nbsp;&nbsp;<button onclick="removeFile();">删除</button><br>';
     cellc.innerHTML=cellcContext;

    }
	
	function addFile2() {
		
      	i++;

     currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= '<input type="file" name="tp'+i+'" >&nbsp;&nbsp;<button onclick="removeFile();">删除</button><br>';
     cellc.innerHTML=cellcContext;

    }
	function findTD(o){
if (o.nodeName=="TR"||o.nodeName=="TABLE") return;
if(o.nodeName=="TD")
return (o);
else
return (o.parentElement);
}
	function removeFile(){
		o = findTD(event.srcElement);
		
conditionTable.deleteRow(o.parentElement.rowIndex*1);
 

	}
      function uploadFile(){

      }
	  
//验证信息
function yz(dx,lr)
{

if((document.form1.dx.value)=='')
{ 

alert(lr); 
document.form1.dx.focus(); 
return false; 
}

}

