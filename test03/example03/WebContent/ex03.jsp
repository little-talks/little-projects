<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style type="text/css">
.line-txt{
	display: inline-block;
}
.info{
	display: inline-block;
}
tr{
	
	}
td{
	text_align:center;
	padding:9px;
	border:1px solid red;
	}
</style>
<meta http-equiv="Access-Control-Allow-Origin" content="">
<head>
<meta charset="UTF-8">
<title>cityData</title>
<script type="text/javascript" src="jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="citydata.js"></script>
<script type="text/javascript">
$(function(){
	$(document).ready(function() {
		// body...	
		var province="";
		var city="";
		var html_str="";	
		$("#provSel").empty();
		//$("#cities").empty();
		$.each(cityData,function(i,item){
			if(cityData[i].pid==0){
				province=cityData[i].city_name;
				html_str += " <option value='"+cityData[i]._id+"'> "+
				cityData[i].city_name+"</option>";
			}//if
		});//each
		$("#provinces").prepend(html_str);
		
		$("#provinces").change(function(){
			var index=$(this).val();//当前省的id
			var html_s="";
			$("#cities").empty();
			$("#citySel").empty();
			$("#provSel").empty();
			for(var i=0;i<cityData.length;i++){
				if(index==cityData[i].pid){
					html_s += " <option value='"+cityData[i].city_code+"'> "+
					cityData[i].city_name+"</option>";
				}//if
			}//each for
			$("#cities").append(html_s);
			$("#provSel").append(getText("#provinces"));
			$("#citySel").append(getText("#cities"));
		});//change
		
		$("#cities").change(function(){
			//$("#cities").empty();
			$("#citySel").empty();
			$("#information").empty();
			$("#citySel").append(getText("#cities"));
			$.ajax({
				url:"http://t.weather.sojson.com/api/weather/city/"
					+getValue("#cities"),
				dataType:"json",
				type:"GET",
				success:function(result){
					var future=result.data.forecast;
					var info=document.getElementById("information");
					$.each(future,function(i,item){
						var newRow=info.insertRow(info.rows.length);
						//for(var j=0;j<6;j++){
							newRow.insertCell(0).innerHTML = future[i].ymd;
							newRow.insertCell(1).innerHTML = future[i].type;
							newRow.insertCell(2).innerHTML = future[i].low;
							newRow.insertCell(3).innerHTML = future[i].high;
							newRow.insertCell(4).innerHTML = future[i].fx;
							newRow.insertCell(5).innerHTML = future[i].fl;
							newRow.insertCell(6).innerHTML = future[i].sunrise;
							
						//}
						//$("#information").html(future[i].ymd+" "+future[i].type+" "+future[i].low+" "+future[i].high+" "+future[i].fx+" "+future[i].fl+" "+future[i].sunrise);
					});//each
					
				}//success
			});//ajax
		});//citychange
		
		function getText(obj){
			var txt=$(obj).find("option:selected").text();
			return txt;
		}
		function getValue(obj){
			var val=$(obj).find("option:selected").val();
			return val;
		}
	
		
	});//ready
	
	
});
</script>
</head>
<body>
	<p>请选择需要查询的城市或地区:</p>
<div  class="line-txt">
<p class="selection">省（直辖市）</p>
<select id="provinces">
	<option value="0">--请选择--</option>
</select>
	
</div>

<div class="line-txt">
<p class="selection" >城市（地区）</p>
<select id="cities">
	<option value="0">--请选择--</option>
</select>
</div>
<br>
<p id="provSel" style="font-size:26px;color:blue" class="info"></p>
<p id="citySel" class="info"></p>
<table >
<thead>
	<tr>
		<th>日期</th>
		<th>天气情况</th>
		<th>最低温度</th>
		<th>最高温度</th>
		<th>风向</th>
		<th>风速</th>
		<th>日出时间</th>
	</tr>
</thead>
<tbody id="information">
	</tbody>
</table>
</body>
</html>