<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.background1 {
	background-image: url(/static/imgs/pic010.jpg);
	background-color: black;
}
</style>
<script>
	function run(clickedObj) {
		$("#firstline").fadeOut('slow');
		$('#intr')[0].pause();
		$('#poem')[0].play();
		$('#poem-txt').fadeIn('slow');
		$(clickedObj).animate({
			width : '10px',
			opacity : '0.2',
			left : '1800px',
			top : '100px'
		}, 30000);
		//$('#waiting')[0].play();
		$("#moviebox").show('slow');
		$("#movie")[0].play();
	}
	function onVideoEnd(){
		
		$("#moviebox").fadeOut('slow');
		
		$("#hornor").fadeIn('slow');

		$("#hornor").animate({
			fontSize : '40px',
		    top:  '30%',
		    left: '250px'
		}, 3000);
		
		$('#poem-txt').fadeOut('slow');
		
		$('#poem-txt').animate({
			bottom : '100px',
			right : '100px'
		}, 18000);
		
		$('#waiting')[0].play();
	}
	function onWaitingAudioEnd(){
		$('#intr')[0].play();	
	}
</script>
<meta charset="UTF-8">
<title>The Wandering Earth</title>
<script src="/static/jquery.min.js"></script>
</head>
<body class="background1">
	<audio id="intr" controls="controls"
		src="/static/audio/winter-in-my-heart.mp3" autoplay="autoplay"></audio>
	<audio id="poem" src="/static/audio/poem.mp3"
		preload="auto"></audio>
    <div id="firstline" style="position:absolute;color:white;font-size:30px;top:30%;left:220px" align="center" >这是一个超级酷炫的项目“<span
		style="font-size: 38px">流浪地球</span>”，让我们一起逃离地球，飞向宇宙，遨游太空吧！<br/>点击屏幕左下角的地球，冲啊！
	</div>
	<audio id="waiting" src="/static/audio/Yellow.mp3" preload="auto" onended="onWaitingAudioEnd();"></audio>
	<div id="poem-txt"
		style="display: none; font-size: 22px; color: orange; position:absolute; right :10px;top:50px" align="center" >
		《观沧海》<br /> <span style="font-size: 18px; color: grey">
			曹操 </span><br /> 东临碣石，以观沧海。 <br /> 水何澹澹，山岛竦峙。<br />树木丛生，百草丰茂。<br />秋风萧瑟，洪波涌起。
			<br />日月之行，若出其中。<br />星汉灿烂，若出其里。<br />幸甚至哉，歌以咏志。
	</div>
	<img src="/static/imgs/earth.png"
		style="position: absolute; left: 10px; bottom: 10px; width: 200px"
		onclick="run(this);return false" 
		title="点击后，开始流浪 ！"
		/>
	<div id="moviebox" style="margin-top: 60px; display: none"
		align="center">
		<video id="movie" height="550px" controls="controls"
			src="/static/video/movie.mp4" onended="onVideoEnd();" />
	</div>
	<div id="hornor" style="display:none;position:absolute;color:white;font-size:24px" align="center">2019年发生了很多大事，谨以此向<span style="color:red">郭鹏老师</span>和<span style="color:orange">北理珠</span>致敬 !  <br/>2019 年，大家都很酷！ <br/>2020，希望大家变得更酷！</div>
</body>
</html>