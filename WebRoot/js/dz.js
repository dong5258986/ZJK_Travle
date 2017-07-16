////景点管理

//添加景点
function  attadd(){
	$.ajaxFileUpload({
		url : 'attraction/addatts',
		secureuri : false,
		fileElementId : 'fileToUpload',
		dataType : 'json',
		data : {
			a_name : $('#a_name').val(),
			a_infotitle : $('#a_title').val(),
			a_info : $('#att_info').val(),
			
		},
		success : function(data, status) {
			var message = data['message'];
			var code = data['code'];
			if (code==200) {
				alert("操作成功！");
				manageatt();
	
			}else{
				alert("处理异常！");
			}
		},
		error : function(data, status, e) {
			alert("上传发生异常");
		}
	})

	return false;
}
//管理景点
function manageatt(){
	window.location.href='attraction/manageatt';
}
//删除景点
function deleteatt(obj){
	var a_id=obj;
	
	if(confirm("是否确定删除？"))$.ajax({
	type:'post',
	datetype:'html',
	url:'attraction/deleteatt',
	cache:false,
	data:{
	"a_id":a_id,
		
	}, 
	success:function(data) {
	alert("删除成功！");
	manageatt();
    } 
    });
}

//根据id查看景点信息
function findattbyid(obj){
	var a_id=obj;
	alert(a_id);
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'attraction/findatt',      //目标地址 
        datatype:"html",
        data:{
         	  "a_id":a_id,
         	 
         	  },
         	  cache:false,
         	  success:function(data) {
     		 	var str = eval("("+data+")");
     	    	$("#attname").val(str.a_name);
     			$("#attsinfo").val(str.a_simpinfo);
     			$("#attinfp").val(str.a_info);
     			document.getElementById("attid").innerHTML=obj;
		
        } 
    });
}
//编辑景点信息
function editatt(){
	var a_id=$("#attid").html();
	var a_name=$("#attname").val();
	var a_simpleinfo=$("#attsinfo").val();
	var a_info=$("#a_info").val();
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'attraction/editatt',      //目标地址 
        datatype:"html",
        data:{
         	  "a_id":a_id,
         	 "a_name":a_name,
         	"a_simpleinfo":a_simpleinfo,
         	"a_info":a_info,
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
        
        	alert("编辑成功");
       	 document.getElementById("modal-5").style.display="none";
			
        } 
    });
	
}

/////////////
//攻略模块//


//管理攻略
function managestra(){
	window.location.href='strategy/manageStr';
}
//添加攻略
function  addstra(){
	$.ajaxFileUpload({
		url : 'strategy/addStra',
		secureuri : false,
		fileElementId : 'fileToUpload',
		dataType : 'json',
		data : {
			str_info : $('#str_info').val(),
			str_rectime : $('#str_rectime').val(),
			att_info : $('#att_info').val(),
			str_simpleinfo : $('#str_simpleinfo').val()
			
		},
		success : function(data, status) {
			var message = data['message'];
			var code = data['code'];
			if (code==200) {
				alert("操作成功！");
				managestra();
			}else{
				alert("处理异常！");
			}
		},
		error : function(data, status, e) {
			alert("上传发生异常");
		}
	})

	return false;
}

//删除景点
function deletestra(obj){
	var str_id=obj;
	if(confirm("是否确定删除？"))$.ajax({
	type:'post',
	datetype:'html',
	url:'strategy/deletestra',
	cache:false,
	data:{
	"str_id":str_id,
		
	}, 
	success:function(data) {
	alert("删除成功！");
	managestra();
	
    } 
    });
}

//根据id查看攻略信息
function  findstra(obj){
	var str_id=obj;
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'strategy/findstrabyid',      //目标地址 
        datatype:"html",
        data:{
         	  "str_id":str_id,
         
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
         		var str = eval("("+data+")");
         		$("#strtitle").val(str.str_title);
     			$("#strrectime").val(str.str_rectime);
     			$("#strinfo").val(str.str_info);
     		
     			document.getElementById("strid").innerHTML=obj;
        
			
        } 
    });
}

//编辑攻略信息
function editstrate(obj){
	var str_id=obj;
	var str_title=$("#strtitle").val();
	var str_rectime=$("#strrectime").val();
	var str_info=$("#strinfo").val();
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'strategy/editstrate',      //目标地址 
        datatype:"html",
        data:{
         	  "str_id":str_id,
         	  "str_title":str_title,
         	  "str_rectime":str_rectime,
         	  "str_info":str_info,
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
        
        	alert("编辑成功");
        	document.getElementById("modal-5").style.display="none";
			
        } 
    });
	
}

//////////////
//住宿模块//

//添加攻略
function  addhotel(){
	$.ajaxFileUpload({
		url : 'hotel/addhotel',
		secureuri : false,
		fileElementId : 'fileToUpload',
		dataType : 'json',
		data : {
			h_name : $('#h_name').val(),
			h_phone : $('#h_phone').val(),
			h_address : $('#h_address').val(),
			h_info : $('#h_info').val()
			
		},
		success : function(data, status) {
			var message = data['message'];
			var code = data['code'];
			if (code==200) {
				alert("操作成功！");
			}else{
				alert("处理异常！");
			}
		},
		error : function(data, status, e) {
			alert("上传发生异常");
		}
	})

	return false;
}
//删除景点
function deletehotel(obj){
	var h_id=obj;
	if(confirm("是否确定删除？"))$.ajax({
	type:'post',
	datetype:'html',
	url:'hotel/deletehotel',
	cache:false,
	data:{
	"h_id":h_id,
		
	}, 
	success:function(data) {
	alert("删除成功！");
	
    } 
    });
}

//根据id查找
function findhotelbyid(obj){
	var h_id=obj;
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'hotel/findhotelByid',      //目标地址 
        datatype:"html",
        data:{
         	  "h_id":h_id,
         	 
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
         		var str = eval("("+data+")");
         		  $("#hname").val(str.h_name);
         		  $("#hprice").val(str.h_price);
         		  $("#hphone").val(str.h_phone);
         		  $("#haddress").val(str.h_address);
         		  $("#hinfo").val(str.h_info);
         		  document.getElementById("hoid").innerHTML=obj;
         		 
        } 
    });
}

//编辑住宿信息
function edithotel(){
	var h_id=$("#hoid").html();
	var h_name=$("#hname").val();
	var h_price=$("#hprice").val();
	var h_phone=$("#hphone").val();
	var h_address=$("#haddress").val();
	var h_info=$("#hinfo").val();
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'hotel/edithotel',      //目标地址 
        datatype:"html",
        data:{
         	  "h_id":h_id,
         	  "h_name":h_name,
         	  "h_price":h_price,
     		"h_phone":h_phone,
     		"h_address":h_address,
     		"h_info":h_info,
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
        
        	alert("编辑成功");
       	 document.getElementById("modal-5").style.display="none";
			
        } 
    });
	
}

//////////////
//特产模块//

//添加特产
function  addspec(){
	$.ajaxFileUpload({
		url : 'specialty/addspec',
		secureuri : false,
		fileElementId : 'fileToUpload',
		dataType : 'json',
		data : {
			s_name : $('#s_name').val(),
			s_info : $('#s_info').val(),
			s_price : $('#s_price').val(),
			
		},
		success : function(data, status) {
			var message = data['message'];
			var code = data['code'];
			if (code==200) {
				alert("操作成功！");
			}else{
				alert("处理异常！");
			}
		},
		error : function(data, status, e) {
			alert("上传发生异常");
		}
	})

	return false;
}
//删除景点
function deletespec(obj){
	var s_id=obj;
	if(confirm("是否确定删除？"))$.ajax({
	type:'post',
	datetype:'html',
	url:'specialty/deletespec',
	cache:false,
	data:{
	"s_id":s_id,
		
	}, 
	success:function(data) {
	alert("删除成功！");
	
  } 
  });
}

//根据id查看信息
function findspecByid(obj){
	var s_id=obj;
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'specialty/findspecbyid',      //目标地址 
        datatype:"html",
        data:{
         	  "s_id":s_id,
         	
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
         		 var str = eval("("+data+")");
         		 $("#sname").val(s_name);
         		 $("#sprice").val(s_price);
         		 $("#sren").val(s_bussiness);
         		 $("#sinfo").val(s_info);
         		 document.getElementById("specid").innerHTML=obj;
         		  
         		  
        } 
    });
}

//编辑t特产信息
function editspec(){
	var s_id=$("#specid").html();
	var s_name=$("#sname").val();
	var s_price=$("#sprice").val();
	var s_bussiness=$("#sren").val();
	var s_info=$("#sinfo").val();

	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'specialty/editspec',      //目标地址 
        datatype:"html",
        data:{
         	  "s_id":s_id,
         	  "s_name":s_name,
         	  "s_price":s_price,
         	  "s_bussiness":s_bussiness,
         	   "s_info":s_info,
         	  
         	  },
         	  cache:false,
         	  success:function(data) {
        
        	alert("编辑成功");
       	 document.getElementById("modal-5").style.display="none";
			
        } 
    });
	
}

//////////////
///用户管理//

//人员管
function deleteuser(obj){
	var id=obj;
	alert(id);
	if(confirm("是否确定删除？"))$.ajax({
	type:'post',
	datetype:'html',
	url:'user/deleteuser',
	cache:false,
	data:{
	"id":id,
		
	}, 
	success:function(data) {
	alert("删除成功！");
	
  } 
  });
}
//根据id查看用户信息
function finduserbyid(obj){
	var id=obj;
	alert(id);
	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'user/finduser',      //目标地址 
        datatype:"html",
        data:{
         	  "id":id,
         	 
         	  },
         	  cache:false,
         	  success:function(data) {
     		 	var str = eval("("+data+")");
     	    	$("#usname").val(str.username);
     			$("#trname").val(str.truename);
     			$("#phone").val(str.phone);
     			document.getElementById("userid").innerHTML=obj;
		
        } 
    });
}
//编辑信息
function edituser(){
	var id=$("#userid").html();
	alert(id);
	var username=$("#usname").val();
	var turename=$("#trname").val();
	var phone=$("#phone").val();

	$.ajax({   
        type: 'POST', //用POST方式传输   
        url:'user/edituser',      //目标地址 
        datatype:"html",
        data:{
         	  "id":id,
         	  "username":username,
         	  "turename":turename,
         	  "phone":phone,
         	  },
         	  cache:false,
         	  success:function(data) {
         		
         		 alert("编辑成功");
        	 document.getElementById("modal-5").style.display="none";
			
        } 
    });
	
}



