
//=================================================================================================
function check()
{//��ѡ
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
{//ȫѡ

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
        alert("�㻹û��ѡ��Ҫɾ�����");
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
            alert("�㻹û��ѡ��Ҫɾ�����");
            return false;
        }
    }
}

//=================================================================================================
//��ȡURL����
function getQueryString(name) {  

// �������û�в��������������в���������Ҫ��ȡ�Ĳ�����ֱ�ӷ��ؿ�   
if(location.href.indexOf("?")==-1 || location.href.indexOf(name+'=')==-1)  
{         return '';     }   
// ��ȡ�����в������� 
var queryString = location.href.substring(location.href.indexOf("?")+1);   
// ��������� ?key=value&key2=value2   
var parameters = queryString.split("&");    
var pos, paraName, paraValue;   
for(var i=0; i<parameters.length; i++)  
{        
// ��ȡ�Ⱥ�λ��    
pos = parameters[i].indexOf('=');     
if(pos == -1) { continue; }       
// ��ȡname �� value     
paraName = parameters[i].substring(0, pos);    
paraValue = parameters[i].substring(pos + 1);      
// �����ѯ��name���ڵ�ǰname���ͷ��ص�ǰֵ��ͬʱ���������е�+�Ż�ԭ�ɿո�     
if(paraName == name)      
{             return unescape(paraValue.replace(/\+/g, " "));         }     }     return ''; }; 

		
//=================================================================================================
//�϶���
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
//Ȩ��ѡ��
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
// ���š����µĸ����ı�����
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
	alert("���ݲ��ܳ���" +max+ "����!");
	}
	else {
	used.value = message.value.length;
	remain.value = max - used.value;
	}
}

//���ֻ�

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

//��������
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
//�۵��˵�
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

//�������ɱ��
   function   setid()   
        {   
        str='<br>';   
        if(!window.form1.upcount.value)   
          window.form1.upcount.value=1;   
        for(i=1;i<=window.form1.upcount.value;i++)   
              str+='ͼƬ'+i+':<input   type="file"   name="tp'+i+'"   style="width:400"   class="tx1"><br><br>';   
        window.upid.innerHTML=str+'<br>';   
        }   
		
		 function   setid2()   
        {   
        str='<br>';   
        if(!window.form1.x_day.value)   
          window.form1.x_day.value=1;   
        for(i=1;i<=window.form1.x_day.value;i++)   
              str+='��'+i+'��:<textarea name="a_content'+i+'" cols="50" rows="4" wrap="VIRTUAL"></textarea> ���ڣ�<input   type="text"   name="a_date'+i+'"  size="10" style=" cursor:hand" onClick="calendar()"   class="tx1"> ס�ޣ�<input   type="text"   name="a_rest'+i+'"      class="tx1"><br>';   
        window.upid2.innerHTML=str+'<br>';   
        }   
		
//email�����ϴ�����

var i=0;
      function addFile() {
		 
      	i++;

     currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= '<input type="file" name="tp'+i+'" >&nbsp;&nbsp;<button onclick="removeFile();">ɾ��</button><br>';
     cellc.innerHTML=cellcContext;

    }
	
	function addFile2() {
		
      	i++;

     currRow=conditionTable.insertRow();
     cellc=currRow.insertCell();
     cellcContext= '<input type="file" name="tp'+i+'" >&nbsp;&nbsp;<button onclick="removeFile();">ɾ��</button><br>';
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
	  
//��֤��Ϣ
function yz(dx,lr)
{

if((document.form1.dx.value)=='')
{ 

alert(lr); 
document.form1.dx.focus(); 
return false; 
}

}

