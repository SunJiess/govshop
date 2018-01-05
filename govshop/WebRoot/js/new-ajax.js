String.prototype.trim=function(){
	return this.replace(/^\s*|\s*$/g,'');
};
(function(window){
	var window=window
	,document=window.document
	,rfexp='Input,Select,Textarea'.toUpperCase();
	(function(){
		var _buf__vb_str='';
		_buf__vb_str='<'+'script language="vbscript">\r\n';
		_buf__vb_str+='Function gb_encode_(str) \r\n';
		_buf__vb_str+='\tDim s,c,a,t\r\n';
		_buf__vb_str+='\tFor i=1 To Len(str) \r\n';
		_buf__vb_str+='\t\tc = Mid(str,i,1) \r\n';
		_buf__vb_str+='\t\ta = ASC(c) \r\n';
		_buf__vb_str+='\t\tIf a<0 OR a>255 Then \r\n';
		_buf__vb_str+='\t\t\tt=Hex(a) \r\n';
		_buf__vb_str+='\t\t\tWhile len(t) mod 2 > 0 \r\n';
		_buf__vb_str+='\t\t\t\tt = "0" & t \r\n';
		_buf__vb_str+='\t\t\tWend \r\n';
		_buf__vb_str+='\t\t\tFor j=1 To len(t)-1 Step 2 \r\n';
		_buf__vb_str+='\t\t\t\ts = s & "%" & Mid(t,j,2) \r\n';
		_buf__vb_str+='\t\t\tNext \r\n';
		_buf__vb_str+='\t\tElseIf a=32 Then \r\n';
		_buf__vb_str+='\t\t\ts = s & "+" \r\n';
		_buf__vb_str+='\t\tElseIf (a>=48 and a<=57) or (a>=65 and a<=90) or (a>=97 and a<=122) Then \r\n';
		_buf__vb_str+='\t\t\ts = s & c \r\n';
		_buf__vb_str+='\t\tElseIf a>0 and a<16 Then \r\n';
		_buf__vb_str+='\t\t\ts = s & "%0" & Hex(a) \r\n';
		_buf__vb_str+='\t\tElseIf a>=16 and a<256 Then \r\n';
		_buf__vb_str+='\t\t\ts = s & "%" & Hex(a) \r\n';
		_buf__vb_str+='\t\tElse \r\n';
		_buf__vb_str+='\t\t\ts = s & c \r\n';
		_buf__vb_str+='\t\tEnd If \r\n';
		_buf__vb_str+='\tNext\r\n';
		_buf__vb_str+='\tgb_encode_ = s\r\n';
		_buf__vb_str+='End Function \r\n';
		_buf__vb_str+='\r\n';
		_buf__vb_str+='Function gb_decode_(input) \r\n';
		_buf__vb_str+='\tDim str,code,a(3),b(1) \r\n';
		_buf__vb_str+='\tstr="" \r\n';
		_buf__vb_str+='\tcode=input \r\n';
		_buf__vb_str+='\tcode=Replace(code,"+"," ") \r\n';
		_buf__vb_str+='\tConst hexstr = "0123456789ABCDEF"\r\n';
		_buf__vb_str+='\tWhile len(code)>0 \r\n';
		_buf__vb_str+='\t\tIf InStr(code,"%")>0 Then \r\n';
		_buf__vb_str+='\t\t\tstr = str & Mid(code,1,InStr(code,"%")-1) \r\n';
		_buf__vb_str+='\t\t\tcode = Mid(code,InStr(code,"%")) \r\n';
		_buf__vb_str+='\t\t\ta(0) = UCase(Mid(code,2,1)) \r\n';
		_buf__vb_str+='\t\t\ta(1) = UCase(Mid(code,3,1)) \r\n';
		_buf__vb_str+='\t\t\tIf a(1)<>"" And InStr(hexstr,a(0))>0 And InStr(hexstr,a(1))>0 Then \r\n';
		_buf__vb_str+='\t\t\t\tb(0) = Eval("&H" & a(0) & a(1)) \r\n';
		_buf__vb_str+='\t\t\t\tIf b(0)>127 And Mid(code,4,1)="%" And len(code)>=6 Then \r\n';
		_buf__vb_str+='\t\t\t\t\ta(2) = UCase(Mid(code,5,1)) \r\n';
		_buf__vb_str+='\t\t\t\t\ta(3) = UCase(Mid(code,6,1)) \r\n';
		_buf__vb_str+='\t\t\t\t\tIf a(3)<>"" And InStr(hexstr,a(2))>0 And InStr(hexstr,a(3))>0 Then \r\n';
		_buf__vb_str+='\t\t\t\t\t\tb(1) = Eval("&H" & a(2) & a(3)) \r\n';
		_buf__vb_str+='\t\t\t\t\t\tstr = str & chr(b(0)*256+b(1)) \r\n';
		_buf__vb_str+='\t\t\t\t\t\tcode = Mid(code,7) \r\n';
		_buf__vb_str+='\t\t\t\t\tElse \r\n';
		_buf__vb_str+='\t\t\t\t\t\tstr = str & "%" \r\n';
		_buf__vb_str+='\t\t\t\t\t\tcode = Mid(code,2) \r\n';
		_buf__vb_str+='\t\t\t\t\tEnd If \r\n';
		_buf__vb_str+='\t\t\t\tElse \r\n';
		_buf__vb_str+='\t\t\t\t\tstr = str & chr(b(0)) \r\n';
		_buf__vb_str+='\t\t\t\t\tcode = Mid(code,4) \r\n';
		_buf__vb_str+='\t\t\t\tEnd If \r\n';
		_buf__vb_str+='\t\t\tElse \r\n';
		_buf__vb_str+='\t\t\t\tstr = str & "%" \r\n';
		_buf__vb_str+='\t\t\t\tcode = Mid(code,2) \r\n';
		_buf__vb_str+='\t\t\tEnd If \r\n';
		_buf__vb_str+='\t\tElse \r\n';
		_buf__vb_str+='\t\t\tstr = str & code \r\n';
		_buf__vb_str+='\t\t\tcode = "" \r\n';
		_buf__vb_str+='\t\tEnd If \r\n';
		_buf__vb_str+='\tWend \r\n';
		_buf__vb_str+='\tgb_decode_ = str \r\n';
		_buf__vb_str+='End Function \r\n';
		_buf__vb_str+='\r\n';
		_buf__vb_str+='<'+'/script>\r\n';
		document.write(_buf__vb_str);
	})();
	var ajax={
		post:function(url,params,callback){
			new process(url,params,callback,'post');
		},
		get:function(url,params,callback){
			new process(url,params,callback,'get');
		},
		now:function(){
			var date=new Date();
			var buf=date.getYear()+"-"+(date.getMonth()+1)+"-"+date.getDate()+" "+date.getHours()+":"+date.getMinutes()+":"+date.getSeconds();
			return buf;
		},
		str2HTML:function(str){
			str=str.trim();
			str=str.replace(/\n/g,"<br/>");
			str=str.replace(/ /g,'&nbsp;');
			return str;
		},
		$:function(obj){
			if(typeof obj == 'string'){
				obj=document.getElementById(obj);
				return obj?obj:null;
			}
			else if(typeof obj == 'object'){
				return obj;
			}
			else{
				return null;
			}
		},
		$e:function(itemName){
			return document.getElementsByName(itemName);
		},
		$v:function(obj){
			obj=ajax.$(obj);
			if(obj && rfexp.indexOf(obj.nodeName)>-1)
				return obj.value;
			else if(obj)
				return obj.innerHTML?obj.innerHTML:"";
			else
				return null;
		},
		request:function(){
			if(arguments.length>0)
				return ajax.reqParam(arguments[0]);
			url = window.location.search;
			var reqdata = new Object();
			if(url.indexOf("?") != -1){
				var str = url.substr(1);
				strs = str.split("&");
				for(var i = 0; i < strs.length; i ++) {
					var param=strs[i].split("=");
					var d="";
					try{
						d=decodeURIComponent(param[1]);
					}
					catch(e){
						d=gb_decode_(param[1]);
					}
					reqdata[param[0]]=d;
				}
			}
			return reqdata;
		},
		reqParam:function(param){
			var reg = new RegExp("(^|&)" + param + "=([^&]*)(&|$)","i");
			var r=window.location.search.substr(1).match(reg);
			if(r!=null){
				var d=r[2];
				try{
					d=decodeURIComponent(param[1]);
				}
				catch(e){
					d=gb_decode_(param[1]);
				}
				return d;
			}
			return null;
		},
		cookie:function(name,value,hours){
			if(arguments.length==1){
				var cookieValue = "";
				var search = name + "=";
				if (document.cookie.length > 0) {
					offset = document.cookie.indexOf(search);
					if (offset != -1) {
						offset += search.length;
						end = document.cookie.indexOf(";", offset);
						if (end == -1) {
							end = document.cookie.length;
						}
						cookieValue = unescape(document.cookie.substring(offset, end));
					}
				}
				return cookieValue;
			}
			else{
				var expire = "";
				if (hours != null) {
					expire = new Date((new Date()).getTime() + hours * 3600000);
					expire = "; expires=" + expire.toGMTString();
				}
				document.cookie = name + "=" + escape(value) + expire + ";path=/";
			}
		},
		trim:function(str){
			if(str){
				return (str+"").replace(/^\s*|\s*$/g,'');
			}
			return "";
		},
		dispatcher:function(url){
			window.location.replace(url);
		},
		redirect:function(url){
			window.location=url;
		}
	};
	function toOldTextStyle(str){
		str=str.replace(/\\'/g,"'");
		str=str.replace(/\\"/g,'"');
		str=str.replace(/\\\\/g,'\\');
		return str;
	};
	
	function process(url,params,callback,type){
		this.contentType="application/x-www-form-urlencoded";
		this.type=type;
		this.url=url;
		this.params=params;
		this.callback=callback;
		this.processXmlHttp();
	};
	process.prototype={
		processXmlHttp:function(){
			try{
				this.xmlHttp=new XMLHttpRequest();
			}
			catch(e){
				var xmllist=[];
				xmllist.push('microsoft.xmlhttp');
				xmllist.push('msxml2.xmlhttp');
				xmllist.push('msxml2.xmlhttp.3.0');
				xmllist.push('msxml2.xmlhttp.5.0');
				xmllist.push('msxml2.xmlhttp.6.0');
				var len=xmllist.length;
				for(var i=0;i<len;i++){
					try{
						this.xmlHttp=new ActiveXObject(xmllist[i]);
						break;
					}
					catch(e1){
					}
				}
			}
			if(this.xmlHttp){
				this.action();
			}
		},
		action:function(){
			this.formatParams();
			this.preUrl();
			if('post'== this.type){
				this.xmlHttp.open("POST",this.url,true);
				this.xmlHttp.setRequestHeader("Content-type",this.contentType);
				this.xmlHttp.send(this.data.join("&"));
			}
			else{
				if(this.data.length>0)
					this.url=this.url+"&"+this.data.join('&');
				this.xmlHttp.open("GET",this.url,true);
				this.xmlHttp.send(null);
			}
			var instance=this;
			this.xmlHttp.onreadystatechange=function(){
				if(instance.xmlHttp.readyState==4){
					if(instance.xmlHttp.status==200){
						instance.textContent=instance.xmlHttp.responseText;
						instance.callback.call(instance);
					}
					else if(instance.xmlHttp.status==404){
						alert("Page Not Found:"+this.url);
					}
					else{
						alert("Server Error!");
					}
				}
			}
		},
		formatParams:function(){
			this.data=[];
			if(this.params){
				for(var p in this.params){
					this.data.push(p+"="+encodeURIComponent(this.params[p]));
				}
			}
		},
		preUrl:function(){
			if(/\?/.test(this.url)){
				if(/&$/.test(this.url)){
				}
				else if(/&/.test(this.url)){
					this.url=this.url+"&";
				}
				else if(/\?$/.test(this.url)){
				}
				else{
					this.url=this.url+"&";
				}
			}
			else{
				this.url=this.url+"?";
			}
			this.url=this.url+".rnd="+new Date().getTime();
		},
		getJson:function(){
			try{
				return eval("("+ this.textContent +")");
			}
			catch(e){
				return null;
			}
		},
		getText:function(){
			return toOldTextStyle(this.textContent);
		},
		getData:function(jsJson){
			if(jsJson)
				return this.getJson();
			else
				return this.getText();
		},
		getXML:function(){
			var responseType=this.xmlHttp.getResponseHeader("Content-Type");
			if(responseType.indexOf("xml")>-1){
				return this.xmlHttp.responseXML.documentElement;
			}
			else{
				return null;
			}
		}
	};
	window.dqbb=ajax;
	
	
	function PageFactory(list,pageSize,callback){
		if(!window.__pageInst){
			window.__pageInst=[];
		}
		this.sid=__pageInst.length;
		window.__pageInst[this.sid]=this;
		
		var rowsCount=list.length;
		var pageCount=parseInt(rowsCount/pageSize);
		pageCount=pageCount*pageSize<rowsCount?pageCount+1:pageCount;
		pageCount=pageCount<1?1:pageCount;
		
		this.curPage=1;
		this.list=list;
		this.pageSize=pageSize;
		this.pageCount=pageCount;
		this.rowsCount=rowsCount;

		this.pageData=function(){
			var dataList=[];
			for(var i=(this.curPage-1)*this.pageSize;i<this.curPage*this.pageSize;i++){
				if(this.list[i])
					dataList.push(this.list[i]);
				else
					break;
			}
			return dataList;
		},
		this.pageLine=function(){
			var buffer="";
			buffer+="<a href=\"javascript:;\" onclick=\"javascript:window.__pageInst["+ this.sid +"].goHomePage();\">首页</a>&nbsp;\r\n";
			buffer+="<a href=\"javascript:;\" onclick=\"javascript:window.__pageInst["+ this.sid +"].goPrePage();\">上一页</a>&nbsp;\r\n";
			buffer+="<a href=\"javascript:;\" onclick=\"javascript:window.__pageInst["+ this.sid +"].goNextPage();\">下一页</a>&nbsp;\r\n";
			buffer+="<a href=\"javascript:;\" onclick=\"javascript:window.__pageInst["+ this.sid +"].goLastPage();\">末页</a>&nbsp;\r\n";
			buffer+="页次："+this.curPage+"/"+this.pageCount+"&nbsp;&nbsp;";
			buffer+="<select onchange=\"javascript:window.__pageInst["+ this.sid +"].goPage(this.value)\">";
			for(var i=1;i<=this.pageCount;i++){
				if(i==this.curPage)
					buffer+="<option selected='selected' value='"+ i +"'>第"+ i +"页</option>";
				else
					buffer+="<option value='"+ i +"'>第"+ i +"页</option>";
			}
			buffer+="</select>&nbsp;&nbsp;";
			buffer+="共检索出"+this.rowsCount+"条记录";
			return buffer;
		},
		this.goPage=function(page){
			if(page>0 && page<=this.pageCount){
				this.curPage=page;
				callback.call(null,this.pageData(),this.pageLine());
			}
		},
		this.goHomePage=function(){
			if(this.curPage>1){
				this.curPage=1;
				callback.call(null,this.pageData(),this.pageLine());
			}
		},
		this.goPrePage=function(){
			if(this.curPage>1){
				this.curPage=this.curPage-1;
				callback.call(null,this.pageData(),this.pageLine());
			}
		},
		this.goNextPage=function(){
			if(this.curPage<this.pageCount){
				this.curPage=this.curPage+1;
				callback.call(null,this.pageData(),this.pageLine());
			}
		},
		this.goLastPage=function(){
			if(this.curPage<this.pageCount){
				this.curPage=this.pageCount;
				callback.call(null,this.pageData(),this.pageLine());
			}
		}
		callback.call(null,this.pageData(),this.pageLine());
	};
	if(window.dqbb)
		window.dqbb.PageFactory=PageFactory;
})(window);

(function(){
	function StyleFactory(obj){
		this.obj=dqbb.$(obj);
	}
	StyleFactory.prototype={
		swap:function(style1,style2){
			this.obj.onmouseover=function(){
				this.className=style2;
			};
			this.obj.onmouseout=function(){
				this.className=style1;
			};
		}
	};
	function sf(obj,style1,style2){
		new StyleFactory(obj).swap(style1,style2);
	}
	if(window.dqbb)
		window.dqbb.sf=sf;
})();

(function(){
	function $cookie(name,value,hours){
		if(arguments.length==1){
			var cookieValue = "";
			var search = name + "=";
			if (document.cookie.length > 0) {
				offset = document.cookie.indexOf(search);
				if (offset != -1) {
					offset += search.length;
					end = document.cookie.indexOf(";", offset);
					if (end == -1) {
						end = document.cookie.length;
					}
					cookieValue = unescape(document.cookie.substring(offset, end));
				}
			}
			return cookieValue;
		}
		else{
			var expire = "";
			if (hours != null) {
				expire = new Date((new Date()).getTime() + hours * 3600000);
				expire = "; expires=" + expire.toGMTString();
			}
			document.cookie = name + "=" + escape(value) + expire + ";path=/";
		}
	}
	if(window.dqbb)
		window.dqbb.cookie=$cookie;
})();

(function(){
	//window有一个默认的onload方法，这里我们可以使用下面方法给window
	//对象注册一个类似于onload的方法，也就是说，下面注册的方法的相当于wondow的onload方法
	//它会在页面内容加载完毕后执行，不会覆盖window.onlaod设置的方法。
	function Ready(callback){
		if(window.attachEvent){//判断IE是否支持attachEvent，如果支持表明当前浏览器为微软的IE或Google IE
			window.attachEvent("onload",function(){
				//注册事件方法，将event作为参数传递到回调函数参数中
				callback.call(this,window.event);
			});
		}
		//如果window含有addEventListener属性（实际上是方法属性），那么
		//说明当前浏览器是FF或Opera
		else if(window.addEventListener){
			//注册事件方法
			window.addEventListener("load",callback,false);
		}
	};
	
	//给对象绑定一个事件方法
	//第一个参数：要绑定对象的ID或者是对象
	//第二个参数：绑定的事件，只能类似于click、dblclick、moueseover等等,不能有on哦！
	//第三个参数：发生该时间要处理的函数
	function Bind(obj,handleEvt,handleFun){
		var obj=dqbb.$(obj);
		if(obj){
			if(obj.attachEvent){
				obj.attachEvent("on"+handleEvt,function(){
					handleFun.call(this,window.event);
				});
			}
			else if(obj.addEventListener){
				obj.addEventListener(handleEvt,handleFun,false);	
			}
		}
	};
	
	/**
	 function On(obj){
		var handlelist=['activate','afterupdate','beforeactivate','beforecopy','beforecut','beforedeactivate','beforeeditfocus','beforepaste','beforeupdate','blur','click','contextmenu','controlselect','copy','cut','dblclick','deactivate','drag','dragend','dragenter','dragleave','dragover','dragstart','drop','errorupdate','filterchange','focus','focusin','focusout','help','keydown','keypress','keyup','layoutcomplete','losecapture','mousedown','mouseenter','mouseleave','mousemove','mouseout','mouseover','mouseup','mousewheel','move','moveend','movestart','paste','propertychange','readystatechange','resize','resizeend','resizestart','scroll','selectstart','timeerror'];
		obj=dqbb.$(obj);
		if(obj){
			for(var p in handlelist){
				if(obj.attachEvent){
					obj.attachEvent("on"+handlelist[p],function(fun){
						fun.call(this,window.event);
					});
				}
				else if(obj.addEventListener){
					obj.addEventListener(handlelist[p],function(fun){
						fun();
					},false);
				}
			}
		}
	}
	*/
	
	if(window.dqbb){
		window.dqbb.ready=Ready;
		window.dqbb.bind=Bind;
	}
})();

(function(){
	function Size(obj){ 
		obj=dqbb.$(obj);
		if(!obj)
			return {x:0,y:0,width:0,height:0};
		var x=y=0;
		var w=obj.offsetWidth;
		var h=obj.offsetHeight;
		do{
			x+=obj.offsetLeft||0;
			y+=obj.offsetTop||0;
			obj=obj.offsetParent;
		}while(obj);
		
		return {"x":x,
				"y":y,
				"X":x,
				"Y":y,
				"left":x,
				"top":y,
				"LEFT":x,
				"TOP":y,
				"w":w,
				"h":h,
				"W":w,
				"H":h};
	};
	function WinSize(){
		var winWidth=0;
		var winHeight=0;
		if (window.innerWidth)
			winWidth=window.innerWidth;
		else if((document.body)&&(document.body.clientWidth))
			winWidth=document.body.clientWidth;
		if(window.innerHeight)
			winHeight=window.innerHeight;
		else if((document.body)&&(document.body.clientHeight))
			winHeight=document.body.clientHeight;
		if(document.documentElement && document.documentElement.clientHeight && document.documentElement.clientWidth){   
			winHeight=document.documentElement.clientHeight;
			winWidth=document.documentElement.clientWidth;
		}
		if(window.scrollWidth&&window.scrollHeight){
			winWidth=window.scrollWidth;
			winHeight=window.scrollHeight;
		}
		return {"w":winWidth,"h":winHeight,"W":winWidth,"H":winHeight};
	};
	function toHTML(str){
		str=str.replace(/</g,'&lt;');
		str=str.replace(/>/g,'&gt;');
		str=str.replace(/ /g,'&nbsp;');
		str=str.replace(/\n/g,'<br/>');
		return str;
	};
	if(dqbb){
		dqbb.size=Size;
		dqbb.winSize=WinSize;
		dqbb.tohtml=toHTML;
	}
})();

function DTimeFactory(itemId,defaultTime){
	var data=defaultTime.split(" ");
	var h1=data[0].split("-");
	var h2=data[1].split(":");
	var date=new Date(h1[0],h1[1]-1,h1[2],h2[0],h2[1],h2[2]);
	this.oldTime=date.getTime();
	if(!window.___dtime){
		window.___dtime=[];
	}
	this.sid=window.___dtime.length;
	window.___dtime[this.sid]=this;
	this.itemObj=document.getElementById(itemId);

	this.process=function(){
		var spacetime=new Date().getTime()-this.oldTime;
		if(this.itemObj){
			var ti=this.formatDate(spacetime);
			this.itemObj.innerHTML=ti;
			this.itemObj.title=ti;
			this.timer=window.setTimeout("window.___dtime["+ this.sid +"].process()",1000);
		}
		else{
			window.clearTimeout(this.timer);
			delete this;
		}
	};
	this.toSize=function(str,size){
		for(var i=(str+'').length;i<size;i++){
			str='0'+str;
		}
		return str;
	};
	//将秒转化为时分秒时间格式
	this.formatDate=function(timespace){
		var seconds=parseInt(timespace/1000);
		var m=parseInt(seconds/60);
		var h=parseInt(m/60);
		var s=seconds-h*60*60-m*60;
		var buffer="";
		if(h>0){
			m=parseInt((seconds-h*60*60)/60);
			s=seconds-h*60*60-m*60;
			buffer=this.toSize(h,2)+":"+this.toSize(m,2)+":"+this.toSize(s,2);
		}
		else if(m>0){
			buffer="00:"+this.toSize(m,2)+":"+this.toSize(s,2);
		}
		else{
			buffer="00:00:"+this.toSize(s,2);
		}
		return buffer;
	};
	this.process();
};