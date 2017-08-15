<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<style type="text/css">
	.form{
		width:400px;
		height: 200px;
		border: black;
		padding: 2px;
		margin: 0 auto;
		background-color: olive;
	}
	.lable1{
		width:400px;
		margin-top:12px;
		 
	}
	.lable2{
		width:400px;
		margin-top:12px;
	}
	.lable3{
		width:400px;
		margin-top:12px;
	}
	.lable4{
		width:400px;
		margin-top:12px;
	}
	
</style>
</head>
<body>
	<div class="form">
		<form action="product_save.action" method="post">
			<legend>Add a product</legend>
			<div class="lable1">
				<label for="name">Product Name:</label>
				<input type="text" id="name" name="name"/>
			</div>
			<div class="lable2">
				<label for="description">Product Description:</label>
				<input type="text" id="description" name="description"/>
			</div>
			<div class="lable3">
				<label for="price">Product Price:</label>
				<input type="text" id="price" name="price"/>
			</div>
			<div class="lable4">
				<input type="submit" value="提交"/>
				<input type="reset" value="重置"/>
			</div>
		</form>
	</div>
</body>
</html>