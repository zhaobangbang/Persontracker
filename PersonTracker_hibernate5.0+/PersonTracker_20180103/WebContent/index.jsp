<%@ page contentType="text/html; charset=utf-8" language="java" import="java.io.*" errorPage="" %>
<!doctype html>
<!--[if lt IE 7]><html class="ie6 oldie" lang="zh"><![endif]-->
<!--[if IE 7]><html class="ie7 oldie" lang="zh"><![endif]-->
<!--[if IE 8]><html class="ie8 oldie" lang="zh"><![endif]-->
<!--[if gt IE 8]><html><![endif]-->
<html>
<head>
<title>登录-蓝思物联</title> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
<script type="text/ecmascript" src="js/jquery-3.1.0.min.js"></script>
<link rel="SHORTCUT ICON" href="image/favicon.ico"/>
<style>
body {
	margin: 0px;
	padding: 0px;
	background-color: #fff;
	color: #666;
	font: 12px/1.5 Tahoma,Arial,"宋体",Helvetica,sans-serif;
}
a{
	color: #333;
	text-decoration: none;
}
a:-webkit-any-link{
	color: -webkit-link;
    text-decoration: underline;
    cursor: auto;
}
.quc-tip-error {
    color: red!important;
}
h1 {
    display: block;
    font-size: 2em;
    -webkit-margin-before: 0.67em;
    -webkit-margin-after: 0.67em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
}
input, select, button {
    vertical-align: middle;
}
input {
    -webkit-appearance: textfield;
    background-color: white;
    border-image-source: initial;
    border-image-slice: initial;
    border-image-width: initial;
    border-image-outset: initial;
    border-image-repeat: initial;
    -webkit-rtl-ordering: logical;
    -webkit-user-select: text;
    cursor: auto;
    padding: 1px;
    border-width: 2px;
    /*border-style: inset;*/
    border-color: initial;
}
input, button, textarea, select {
    line-height: 1.2;
    margin: 0;
}
input, button, textarea, select, optgroup, option {
    font-family: inherit;
    font-size: inherit;
    font-style: inherit;
    font-weight: inherit;
}
user agent stylesheet
input, textarea, keygen, select, button {
    text-rendering: auto;
    color: initial;
    letter-spacing: normal;
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    margin: 0em 0em 0em 0em;
    font: 13.3333px Arial;
}
user agent stylesheet
input, textarea, keygen, select, button, meter, progress {
    -webkit-writing-mode: horizontal-tb;
}
#lansi {
	background: #fff;
	font: 14px "Microsoft YaHei";
	height: 100%;
	margin: 0 auto;
	position: relative;
	width: 100%;
	overflow: hidden;
}
#login-header {
	padding: 20px 0;
	width: 100%;
}
#login-header .logo {
	margin: 0 auto;
	width: 1180px;
}
.login-content {
	height: 650px;
	position: relative;;
	width: 100%;
}
.login-content .login-bg {
    background-image: url(image/content-login-bg.png);
    background-size: cover;
    background-position: center center;
    background-repeat: no-repeat;
    height: 650px;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%;
}
.login-content .center_content {
    height: 650px;
    margin: 0 auto;
    max-width: 1180px;
    position: relative;
}
.login-content .login-logo-left {
    background: url(image/111.png) no-repeat;
    background-size: cover;
    height: 256px;
    left: 0;
    position: absolute;
    top: 220px;
    width: 651px;
}
.login-content .content-bg-link {
    display: block;
    height: 100%;
    left: 0;
    position: absolute;
    width: 100%;
    z-index: 5;
}
.login-content .content-layout {
    background: rgba(255,255,255,0.9) !important;
    background: #fff;
    display: none;
    position: absolute;
    right: 0;
    top: 106.5px;
    width: 345px;
    filter: alpha(opacity=90);
    z-index: 10;
}
.login-content .content-layout .login {
	overflow: hidden;
	padding: 25px;
}
.login-content .content-layout h1 {
    font-size: 20px;
    margin: 20px 0;
}
.quc-qiuser-panel .quc-wrapper {
    font: 16px "Microsoft YaHei";
    margin-bottom: 20px;
}
.quc-wrapper dd, .quc-wrapper div, .quc-wrapper dl, .quc-wrapper dt, .quc-wrapper form, .quc-wrapper i, .quc-wrapper label, .quc-wrapper li, .quc-wrapper ol, .quc-wrapper p, .quc-wrapper ul {
    margin: 0;
    padding: 0;
    list-style: none;
    width: auto;
    height: auto;
    box-sizing: content-box;
    -moz-box-sizing: content-box;
    -webkit-box-sizing: content-box;
}
.quc-qiuser-panel .quc-wrapper .quc-tip-wrapper {
    height: 24px;
    padding: 0;
}

.quc-mod-sign-in .quc-tip-wrapper {
    height: 21px;
    line-height: 21px;
    padding: 13px 0 0 105px;
}
.quc-wrapper .quc-tip {
    color: #959393;
}
.quc-qiuser-panel .quc-wrapper .quc-main {
    min-height: 277px;
    padding: 0;
    width: auto;
}

.quc-mod-sign-in .quc-main {
    width: 380px;
    min-height: 190px;
    padding: 0 0 10px 30px;
}
.quc-mod-sign-in p.quc-field-account, .quc-mod-sign-in p.quc-field-password {
    background: #fff;
    border: 2px solid #e6e6e6;
    margin-bottom: 18px;
}

.quc-mod-sign-in p.quc-field-account {
    z-index: 10;
}
.quc-mod-sign-in .quc-field {
    margin-bottom: 10px;
}
.quc-fixIe6margin {
    display: inline-block;
}
.quc-mod-sign-in .quc-field-account .quc-label {
    background: url(image/account-icon.png);
    display: inline-block;
    height: 18px;
    margin: 0 0 0 8px;
    vertical-align: middle;
    width: 18px;
}
.quc-mod-sign-in .quc-label {
    display: inline-block;
    width: 60px;
    margin-right: 10px;
    line-height: 31px;
    font-size: 14px;
    color: #333;
    text-align: right;
}
.quc-mod-sign-in .quc-field-account .quc-input-bg, .quc-mod-sign-in .quc-field-password .quc-input-bg {
    display: inline-block;
    height: 48px;
}
.quc-mod-sign-in .quc-field-account .quc-input-bg, .quc-mod-sign-in .quc-field-password .quc-input-bg, .quc-mod-sign-in .quc-field-captcha .quc-input-bg {
    background: #fff;
    width: 250px;
}
.quc-mod-sign-in .quc-main .quc-input {
    background: none;
    border: 0;
    font-size: 16px;
    margin: 8px 4px 3px;
    outline: none;
    width: 230px;
}
.quc-wrapper .quc-input {
    width: 247px;
    height: 21px;
    margin: 5px 4px 3px;
    padding: 6px 7px;
    line-height: 20px;
    color: gray;
    outline: 0;
    border: 0;
    background-color: #fff;
    font-family: inherit;
    font-size: 14px;
}
.quc-wrapper .quc-input-bg {
    display: inline-block;
    width: 270px;
    height: 42px;
    vertical-align: middle;
}
.quc-mod-sign-in .quc-field-password .quc-label {
    background: url(image/password-icon.png);
    display: inline-block;
    height: 18px;
    margin: 0 0 0 8px;
    vertical-align: middle;
    width: 18px;
}
sign-in .quc-field-password .quc-input-bg {
    display: inline-block;
    height: 48px;
}
.quc-mod-sign-in .quc-main .quc-field-keep-alive {
    font-size: 14px;
    margin: 20px 0 10px;
    padding: 0;
}
.quc-clearfix, .quc-clearfix:after {
    clear: both;
}
.quc-clearfix:after {
    content: ".";
    display: block;
    height: 0;
    clear: both;
    visibility: hidden;
}
.quc-clearfix:after {
    content: " ";
    display: block;
    height: 0;
    visibility: hidden;
}

.quc-clearfix, .quc-clearfix:after {
    clear: both;
}
.quc-mod-sign-in .quc-form a.quc-link {
    color: #7a7e80;
}
.quc-wrapper a.quc-link, .quc-wrapper a.quc-link:active {
    color: #0082cb;
}

.quc-wrapper a.forgetPass {
    float: left;
}
.quc-wrapper a {
    text-decoration: none;
}
.quc-mod-sign-in .quc-form a.quc-link {
    color: #7a7e80;
}
.quc-wrapper a.quc-link, .quc-wrapper a.quc-link:active {
    color: #0082cb;
}
.quc-wrapper a.signUpAccount {
    float: right;
}
.quc-wrapper .keepPassword{
	-webkit-appearance: checkbox;
    margin-right: 5px;
}
.quc-wrapper a {
    text-decoration: none;
}
.quc-mod-sign-in p.quc-field-submit {
    margin-top: 20px;
    padding: 0;
}
.quc-mod-sign-in input.quc-submit {
    background: #22ac69;
    border-radius: 5px;
    color: #fff;
    font-size: 14px;
    height: 40px;
    line-height: 40px;
    text-indent: 0;
    width: 100%;
    
    box-sizing: content-box;
}
body #ft{ 
	margin-top: 50px;
	padding: 0 0 10px;
	text-align: center;	
}
#ft .links a{
	text-decoration: none;
}
#ft .links a:hover{
	color: red;
	text-decoration: underline;
}

#ft,#ft a {
	color: #999;
}

.div-display-important{
     display:none !important;
}
.outline-input {
    border: 0;
    color: gray;
    font-size: 14px;
    height: 21px;
    line-height: 21px;
    margin: 4px;
    outline: none;
    padding: 6px 7px;
}
.text-email,.text-pwd1,.text-pwd2,.text-name{
    width:300px;
}
.guest-back-div{
     height:100%;
     width:100%;
     position:absolute;
     z-index:9990;
     background-color:rgba(0,0,0,0.5);
     display:none;
     position:fixed;
}
.guest-back{
     padding:20px;
     width:360px;
     height:250px;
     background-color:#fff;
     margin:0 auto;
     margin-top:200px;
}
.guest-role-select{
     margin-left:5%;
     margin-right:5%;
     width:90%;
     display:inline-block;
     height:45px;
     text-align:center;
     cursor:pointer;
     line-height:45px;
     background-color:#84d3ff;
     margin-top:15px;
     font-family:Tahoma,Arial,"宋体",Helvetica,sans-serif;
     font-size:14px;
     color:#1f4768;
     border:1px solid #84d3ff;
}

.guest-back-div2{
     height:100%;
     width:100%;
     position:absolute;
     z-index:9990;
     background-color:rgba(0,0,0,0.5);
     display:none;
     position:fixed;
}
.guest-back2{
     padding:20px;
     width:360px;
     height:250px;
     background-color:#fff;
     margin:0 auto;
     margin-top:200px;
}
.guest-role-select2{
     margin-left:10%;
     margin-right:10%;
     width:80%;
     display:inline-block;
     height:45px;
     text-align:center;
     cursor:pointer;
     line-height:45px;
     background-color:#84d3ff;
     margin-top:15px;
     font-family:Tahoma,Arial,"宋体",Helvetica,sans-serif;
     font-size:14px;
     color:#1f4768;
     border:1px solid #84d3ff;
}
</style>

<script type="text/javascript"> 
function reloadImage() {
	document.getElementById('btn').disabled = true;
	document.getElementById('identity').src='IdentityServlet.do?ts=' + new Date().getTime();
}
</script>
<%
  String sName="";
  String sKey="";

  Cookie[] cookies=request.getCookies();
  String ckExist="";
  if(null != cookies)
  {
     for(int i=0; i<cookies.length; i++)
	 {
	   try{
	    if(cookies[i].getName().equals("lansiuser"))
		{
		   sName=cookies[i].getValue().split("-")[0];
		   sKey=cookies[i].getValue().split("-")[1];
		   sKey = com.lansitec.infrastructure.util.SecurityUtil.decrypt(sKey, "pcasset");
		   request.setAttribute("sName", sName);
		   request.setAttribute("sKey", sKey);
		   ckExist = "checked=\"\"";
		}
		}
	   catch(Exception e){
	      cookies[i].setMaxAge(0);
	   }
	 } 
  }
%> 
</head>

<body onload="" style="height: 100%;overflow-y:auto;">
    <div class="guest-back-div">
    	<div class="guest-back">
    	    <h3>请完善一下信息:</h3>
    	    <input id="qname" type="text" name="name" class="outline-input text-name" placeholder="用户名">
    		<input id="qmail" type="text" name="email" class="outline-input text-email" placeholder="邮箱">
    		</br>
    		<botton class="guest-role-select" value="确定">确定</botton>
    	</div>
    </div>
    
    <div class="guest-back-div2">
    	<div class="guest-back2">
    	    <h3>重置密码:</h3>
    	    <input id="qpwd1" type="password" name="pwd1" class="outline-input text-pwd1" placeholder="新密码">
    		<input id="qpwd2" type="password" name="pwd2" class="outline-input text-pwd2" placeholder="确认密码">
    		</br>
    		<botton class="guest-role-select2" value="确定">确定</botton>
    	</div>
    </div>
    
	<div id="lansi">
		<div class=login-page>
			<div id="login-header">
				<div class="logo">
					<a href="index.jsp" title=""><img alt="蓝思科技" src="image/logo.png" ></a>
				</div>
			</div>
			
		    <div class="login-content">
				<div class="login-bg"></div>
				<div class="center_content">
					<div class="login-logo-left">
						<a class="content-bg-link" href="http://www.lansitec.com" title="" target="_blank"></a>
					</div>
					<div class="content-layout" style="display: block;">
						<div class="login"><h1 class="login-title">登陆</h1>
					
							<div class="mod-qiuser-pop quc-qiuser-panel">
  								<div class="login-wrapper quc-wrapper quc-page">
    								<div class="quc-mod-sign-in quc-mod-normal-sign-in">
      									<div class="quc-tip-wrapper"><p class="quc-tip"></p></div>
      									<div class="quc-main">
        									<form class="quc-form" name="qucform" onsubmit="return false">
          										<p class="quc-field quc-field-account quc-input-long">
          											<span class="quc-fixIe6margin"><label class="quc-label"></label></span>
            										<span class="quc-input-bg">
            											<input class="quc-input quc-input-account" id="name" name="account" placeholder="用户名" autocomplete="off" value = "<%=sName %>">
            										</span>
           										</p>
          										<p class="quc-field quc-field-password quc-input-long">
          											<span class="quc-fixIe6margin"><label class="quc-label"></label></span>
            										<span class="quc-input-bg">
            											<input class="quc-input quc-input-password" id="psw" type="password" name="password" maxlength="20" placeholder="密码"  value="<%=sKey %>">
            										</span>
            								    </p>
            								    <p class="quc-field quc-field-keep-alive quc-clearfix"><input id="rkey" class="keepPassword quc-link" type='checkbox' name='rkey' <%=ckExist%>/>
            								    	<label for="rkey">记住密码</label>
          										</p>
          									</form>
          									<p class="quc-field quc-field-submit">
            									<input type="button" value="登录" name="login" class="quc-submit quc-button quc-button-sign-in">
          								    </p>
          									<p class="quc-field quc-field-keep-alive quc-clearfix">
          										<span class="forgetPass quc-link">找回密码?</span>
          									</p>
      									</div>
    								</div>
  								</div>
							</div>
							
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div id="ft">
			<div class="links">
				<a rel="nofollow" target="_blank" href="http://www.lansitec.com/html/about.html">关于我们
            	</a>
            |
	            <a rel="nofollow" target="_blank" href="http://www.lansitec.com/html/contactus.html"> 联系我们
	            </a>
            |
	            <a rel="nofollow" target="_blank" href="http://www.lansitec.com/html/joinus.html">人才招聘
	            </a>
            |

	            <a target="_blank" href="http://www.lansitec.com/html/partners.html"> 合作伙伴
	            </a>	
			</div>
			
			<p>Copyright©2016</p> 
			<p>All Rights Reserved 南京蓝思信息科技有限公司</p>
			<P>苏ICP备16022777号-1</P>
		</div>
		
	</div>
	
	<script type="text/javascript">
		$(document).ready(function() {
			var username = null;
		    $(".forgetPass").click(function() {
				$(".guest-back-div").css("display","block");
				$("body").css("overflow-y","hidden");
		    });

		    $(".guest-role-select").on("click",function() {
		        username = $("#qname").val();
		        var usermail = $("#qmail").val();
		        if ((usermail == "")) {
					alert("邮箱不能为空  ！");
				}else{
		        	var checkuser = {
		        		 username: username,
		        		 usermail: usermail
		   			};
		   		    //调用AJAX 
		   			$.ajax({
		   				async: false,
		   				type: "POST",
		   				url: "LoginValidator/doPost.do?operate=check",
		   				data: checkuser,
		   				success: function(data) {
		   					var status = eval("("+data+")");
		   				    if (status == "ok") {  				 		           
		   				    	$(".guest-back-div").css("display","none");
		   				    	$("body").css("overflow-y","auto");
		   				    	$(".guest-back-div2").css("display","block");
		   						$("body").css("overflow-y","hidden");
		   					}else {
		   						alert("请输入正确的信息 ！");
		   					}
		   				}
		   			});
		     	}
		    });
		    
		    $(".guest-role-select2").on("click",function() {
		    	var pwd1 = $("#qpwd1").val();
		        var pwd2 = $("#qpwd2").val();
		        if(pwd1 != pwd2) {
		        	$("#qpwd1").val("");
		        	$("#qpwd2").val("");
		        	alert("两次密码不一致 !");
		        }else {
		        	var updatepsw = {
		        		 username: username,
		        		 password: pwd2				   
		   			};
		        	$.ajax({
				    	async: false,
				    	type: "POST",
				    	url: "MyselfManager/doPost.do?operate=update",
				    	data: updatepsw,
				    	success: function(data) {
				    		var status = eval("("+data+")");
				    		if (status == "ok") {
				    			$(".guest-back-div2").css("display","none");
		   				    	$("body").css("overflow-y","auto");
		   				    	alert("重置密码成功 !");
				    		}else {
				    			alert("重置密码失败 !");
				    		}
				    	}
				    });	
		        }
		    });
		    
		    $(".guest-back").click(function(event) {
            	event.stopPropagation();
        	});
		    $(".guest-back2").click(function(event) {
            	event.stopPropagation();
        	});
        	
			$(".guest-back-div").on("click",function() {
				$(".guest-back-div").css("display","none");
				$("body").css("overflow-y","auto");
			});
			
			$(".guest-back-div2").on("click",function() {
				$(".guest-back-div2").css("display","none");
				$("body").css("overflow-y","auto");
			});
		  
			$(".quc-submit").click(function() {
				fr = document.qucform;
				
				if(fr.account.value == "") {
					$(".quc-tip").addClass("quc-tip-error").html("请输入用户名！");
					fr.account.focus();
					return false;
				}
				if(fr.password.value == "") {
					$(".quc-tip").addClass("quc-tip-error").html("请输入密码！");
					fr.password.focus();
					return false;
				}
		
				var user = {
		 			username: $("#name").val(),
		    		password: $("#psw").val(),
		    		rkey: $("#rkey").prop("checked")
				};
		     //调用AJAX 
		     	$.ajax({
    				async: false,
	    			type: "POST",
		    	    url: "LoginValidator/doPost.do?operate=login",
		    		data: user,
		    		success: function(data) {
		    			var status = eval("("+data+")");
		    			if (status == "nouser") {  
		 		        	$(".quc-tip").addClass("quc-tip-error").html("用户名错误！");
		 		            return false;  
		 		        }
	    				else if(status== "nokey") {
	    					$(".quc-tip").addClass("quc-tip-error").html("密码错误！");
	    					return false;	 
	    				 }
		    			window.location.href="globalshow.jsp";
						}
		    		 });	 

			});
		})
	</script>
	
</body>
</html>