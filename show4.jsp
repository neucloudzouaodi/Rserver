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
			<form action="../rserve/getCompareScore" method="Post" >
			<div style="border: 2px solid;border-radius: 5px;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-color: #777777;">
				选择参数：
				<select name="pc" id="pc">
					<option>1</option><option>2</option><option>3</option>
					<option>4</option><option>5</option><option>6</option>
					<option>7</option><option>8</option><option>9</option>
					<option>10</option><option>11</option><option>12</option>
					<option>13</option><option>14</option><option>15</option>
					<option>16</option><option>17</option><option>18</option>
					<option>19</option><option>20</option><option>21</option>
					<option>22</option><option>23</option><option>24</option>
					<option>25</option><option>26</option><option>27</option>
					<option>28</option><option>29</option><option>30</option>
					<option>31</option><option>32</option><option>33</option>
					<option>34</option><option>35</option><option>36</option>
					<option>37</option><option>38</option><option>39</option>
					<option>40</option><option>41</option><option>42</option>
					<option>43</option><option>44</option><option>45</option>
					<option>46</option><option>47</option><option>48</option>
					<option>49</option><option>50</option><option>51</option>
				</select>
				<br/><div style="margin-left:20%">
					<div>
						<label name="parameterName" style="width:10%;">A</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">B</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">C</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">D</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">E</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">F</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">G</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">H</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">I</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">J</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">K</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">L</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">M</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">N</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">O</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">P</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">Q</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
					<div>
						<label name="parameterName" style="width:10%;">R</label>
						<span style="margin-left:5%;">权值：<input name="weightValueA" style="width:30%;" type="text"  value="0" /></span>
					</div>
				</div>
				<br/>
				<input  style="margin-left:20%" type="button" onclick="selectOk()"  value="确定" />
			</div>
			</form>
		</div>
		<div class="col-md-8" style="margin-top:5%;">
			<div style="border: 2px solid;border-radius: 5px;padding-top: 10px;padding-bottom: 10px;padding-left: 10px;border-color: #777777;">
				<img id="dataImage" src="" />
			</div>
		</div>
		
	</div>
	<br/>
	<!--endprint1-->  
</body>
<script type="text/javascript" >  
	$(function(){
		$.ajax({
			url:"../rserve/getCompareScore",
			type:"POST",
			traditional: true,
			data:{},
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
		var selected=$("#pc").val();
		var parameter=document.getElementsByName("weightValueA");
		var parameterValue = new Array(); 
		for(var i=0;i<parameter.length;i++){
			parameterValue[i]=parameter[i].value;
		}
		var name=document.getElementsByName("parameterName");
		var nameValue = new Array(); 
		for(var i=0;i<name.length;i++){
			nameValue[i]=name[i].innerText;
		}
		$.ajax({
			url:"../rserve/getCompareScore",
			type:"POST",
			traditional: true,
			data:{pc:selected,weightValueA:parameterValue,nameValue:nameValue},
			success:function(data){
				var jsondata=eval("("+data+")");
				$("#dataImage").attr("src",jsondata.path);
			}
			
		})
	}
	
	function getData(){
		var path=$('input[type="file"]').val();
		alert(path);
	}
	
</script>
</html>