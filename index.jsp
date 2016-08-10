<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>类型选择</title>
<link rel="stylesheet" href="../css/bootstrap.css"/>  
<script type="text/javascript" src="../js/jQuery-2.1.4.min.js"></script> 
<script type="text/javascript" src="../js/jquery-ui.js"></script> 
</head>
<body>
	<div class="container">
		<div style="margin-top:20%;">
			<div class="col-md-3" onclick="goShow(1)">
				<div>
					<span>单条参数数据分析</span>
				</div>
				<div>
					<img src="../resource/img/demo1.jpg" style="width: 70%;" />
				</div>
			</div>
			<div class="col-md-3" onclick="goShow(2)">
				<div>
					<span>同一批次多条参数数据对比</span>
				</div>
				<div>
					<img src="../resource/img/demo2.jpg" style="width: 70%;" />
				</div>
			</div>
			<div class="col-md-3" onclick="goShow(3)">
				<div>
					<span>不同批次同一参数数据对比</span>
				</div>
				<div>
					<img src="../resource/img/demo3.jpg" style="width: 70%;" />
				</div>
			</div>
			<div class="col-md-3" onclick="goShow(4)">
				<div>
					<span>同一批次参数打分情况</span>
				</div>
				<div>
					<img src="../resource/img/demo4.jpg" style="width: 70%;" />
				</div>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	function goShow(num){
		if(num=="1"){
			window.location.href="../rserve/show";
		}else if(num=="2"){
			window.location.href="../rserve/show2";
		}else if(num=="3"){
			window.location.href="../rserve/show3";
		}else{
			window.location.href="../rserve/show4";
		}
	}
</script>
</html>