<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>同一批次多条参数数据对比</title>
<link rel="stylesheet" href="../css/bootstrap.css"/>  
<script type="text/javascript" src="../js/jQuery-2.1.4.min.js"></script> 
<script type="text/javascript" src="../js/jquery-ui.js"></script> 
</head>
<body>
	<div style="margin-top:3%;margin-right:3%;text-align:right;">
		<input id="btnPrint" type="button" value="打印" onclick="printHtml()" /> 
	</div>
	 
	<script>  
		function preview(oper)         
		{  
			if (oper < 10)  
			{  
				bdhtml=$(".container").innerHTML;//获取当前页的html代码  
				sprnstr="<!--startprint"+oper+"-->";//设置打印开始区域  
				eprnstr="<!--endprint"+oper+"-->";//设置打印结束区域  
				prnhtml=bdhtml.substring(bdhtml.indexOf(sprnstr)+18); //从开始代码向后取html  
				  
				prnhtml=prnhtml.substring(0,prnhtml.indexOf(eprnstr));//从结束代码向前取html  
				window.document.body.innerHTML=prnhtml;  
				window.print();  
				window.document.body.innerHTML=bdhtml;  
			} else {  
				window.document.body.innerHTML = $(".container")[0].innerHTML;
				window.print();  
			}  
		} 
		
		function printHtml(){
			window.document.body.innerHTML = $(".container")[0].innerHTML;
			window.print();  
		}
	</script> 
	<!--startprint1-->
	<div class="container">
		<div class="col-md-4" style="margin-top:5%;">
			<div style="border: 2px solid;border-radius: 5px;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-color: #777777;">
				选择参数：<br/>
				<!-- <table cellspacing="10">
					<tr style="height: 50px;">
						<td>
							数据种类
						</td>
						<td style="padding-left: 8px;">
							<select id="dataType" onchange="getImage()">
								<option value="A">A</option><option value="B">B</option>
								<option value="C">C</option><option value="D">D</option>
								<option value="E">E</option><option value="F">F</option>
								<option value="G">G</option><option value="H">H</option>
								<option value="I">I</option><option value="J">J</option>
								<option value="K">K</option><option value="L">L</option>
								<option value="M">M</option><option value="N">N</option>
								<option value="O">O</option><option value="P">P</option>
								<option value="Q">Q</option><option value="R">R</option>
							</select>
						</td>
					</tr>
					<tr style="height: 50px;">
						<td>
							数据种类
						</td>
						<td style="padding-left: 8px;">
							<select id="dataType2" onchange="getImage()">
								<option value="A">A</option><option selected value="B">B</option>
								<option value="C">C</option><option value="D">D</option>
								<option value="E">E</option><option value="F">F</option>
								<option value="G">G</option><option value="H">H</option>
								<option value="I">I</option><option value="J">J</option>
								<option value="K">K</option><option value="L">L</option>
								<option value="M">M</option><option value="N">N</option>
								<option value="O">O</option><option value="P">P</option>
								<option value="Q">Q</option><option value="R">R</option>
							</select>
						</td>
					</tr>
					<tr style="height: 50px;">
						<td>
							数据种类
						</td>
						<td style="padding-left: 8px;">
							<select id="dataType2" onchange="getImage()">
								<option value="A">A</option><option value="B">B</option>
								<option  selected value="C">C</option><option value="D">D</option>
								<option value="E">E</option><option value="F">F</option>
								<option value="G">G</option><option value="H">H</option>
								<option value="I">I</option><option value="J">J</option>
								<option value="K">K</option><option value="L">L</option>
								<option value="M">M</option><option value="N">N</option>
								<option value="O">O</option><option value="P">P</option>
								<option value="Q">Q</option><option value="R">R</option>
							</select>
						</td>
					</tr>
				</table> -->
				<div style="margin-left:20%">
					<input name="parameter" type="checkbox" checked="checked"  value="A" />A
					<input name="parameter" type="checkbox" checked="checked"  value="B" />B
					<input name="parameter" type="checkbox" value="C" />C
					<input name="parameter" type="checkbox" value="D" />D
					<input name="parameter" type="checkbox" value="E" />E
					<input name="parameter" type="checkbox" value="F" />F<br/>
					<input name="parameter" type="checkbox" value="G" />G
					<input name="parameter" type="checkbox" value="H" />H
					<input name="parameter" type="checkbox" value="I" />I
					<input name="parameter" type="checkbox" value="J" />J
					<input name="parameter" type="checkbox" value="J" />K
					<input name="parameter" type="checkbox" value="J" />L<br/>
					<input name="parameter" type="checkbox" value="J" />M
					<input name="parameter" type="checkbox" value="J" />N
					<input name="parameter" type="checkbox" value="J" />O
					<input name="parameter" type="checkbox" value="J" />P
					<input name="parameter" type="checkbox" value="J" />Q
					<input name="parameter" type="checkbox" value="J" />R
				</div>
				<br/>
				<input  style="margin-left:20%" type="button" onclick="selectOk()" value="确定" />
				
			</div>
		</div>
		<div class="col-md-8" style="margin-top:5%;">
			<div style="border: 2px solid;border-radius: 5px;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-color: #777777;">
				<img id="dataImage" src="" />
			</div>
		</div>
	</div>
	<!--endprint1-->  
</body>
<script type="text/javascript" >  
	$(function(){
		var selParameter="A,B";
		$.ajax({
			url:"../rserve/getCompare",
			type:"POST",
			data:{selParameter:selParameter},
			success:function(data){
				var jsondata=eval("("+data+")");
				$("#dataImage").attr("src",jsondata.path);
			}
			
		})
	})

	function getImage(){
		var selOne=$("#dataType").val();
		var selOne2=$.trim($("#dataType2").val());
		$.ajax({
			url:"../rserve/getCompare",
			type:"POST",
			data:{selOne:selOne,selOne2:selOne2},
			success:function(data){
				var jsondata=eval("("+data+")");
				$("#dataImage").attr("src",jsondata.path);
			}
			
		})
	}
	
	function selectOk(){
		/* var selOne=$("#dataType").val();
		var selOne2=$.trim($("#dataType2").val()); */
		var selParameter=getSel();
		$.ajax({
			url:"../rserve/getCompare",
			type:"POST",
			data:{selParameter:selParameter},
			success:function(data){
				var jsondata=eval("("+data+")");
				$("#dataImage").attr("src",jsondata.path);
			}
			
		})
	}
	
	function getSel(){
		var str="";		
		 var a = document.getElementsByName("parameter");  
	     for ( var i = 0; i < a.length; i++) {  
		     if (a[i].checked) {  
			     temp = a[i].value;  
			     if(i!=a.length-1){
			    	 str+=temp+",";  
			     }else{
			    	 str+=temp;  
			     }
			     
		     }  
	     }
	     return str;
	}
	
	function getData(){
		var path=$('input[type="file"]').val();
		alert(path);
	}
	
	/* setInterval("location.reload();", 2000); */
</script>
</html>