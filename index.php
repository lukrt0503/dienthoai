
<?php 
session_start();
include("include/connect.php");?>

<!DOCTYPE html">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title> Bán Điện Thoại </title>
	<script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<link rel="stylesheet" style="style/sheet" href="css/index.css">



<script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
<link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />


<script>



$(document).ready(function(){

	$('ul.tabs').each(function(){



var $active, $content, $links = $(this).find('a');


$active = $($links.filter('[href="'+location.hash+'"]')[0] || $links[0]);

$active.addClass('active');

$content = $($active.attr('href'));



$links.not($active).each(function () {

	$($(this).attr('href')).hide();

});



$(this).on('click', 'a', function(e){



$active.removeClass('active');

$content.hide();



$active = $(this);

$content = $($(this).attr('href'));



$active.addClass('active');

$content.show();


e.preventDefault();

});

});

});

</script>


<link rel="stylesheet" style="style/sheet" href="css/style1.css">
<script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
<script language="javascript" type="text/javascript" src="js/script.js"></script>
<script type="text/javascript">
	$(document).ready( function(){	
		var buttons = { previous:$('#lofslidecontent45 .lof-previous') ,
		next:$('#lofslidecontent45 .lof-next') };
		
		$obj = $('#lofslidecontent45').lofJSidernews( { interval : 4000,
			direction		: 'opacitys',	
			easing			: 'easeInOutExpo',
			duration		: 2000,
			auto		 	: true,
			maxItemDisplay  : 4,
												navPosition     : 'horizontal', // horizontal
												navigatorHeight : 32,
												navigatorWidth  : 80,
												mainWidth:1000,
												buttons			: buttons} );	
	});
</script>
</head>
<body style="background:white">
	<div id="wapper">
		<div id="header">
			<div id="lg-header">
				<h1><a href="index.php">logo</a></h1>
			</div>
		
			<div id="bg-header">	
			</div>
			<div id="menu-header">
				<?php include("home_include/menu_ngang.php"); ?>
			
			</div>
		</div>
		<div id="content">
			<div id="lofslidecontent45" class="lof-slidecontent" style="width:1000px; height:350px;">
				<div class="preload"><div></div></div>
				<div id="lof-main-outer">
					<ul class="lof-main-wapper">
						<li><img src="img/slide/slide1.jfif" width="1000" height="350"></li>
						<li><img src="img/slide/slide.jfif" width="1000" height="350"></li>
						<li><img src="img/slide/slide2.jfif" width="1000" height="350"></li>
						<li><img src="img/slide/slide3.jfif" width="1000" height="350"></li>
						<li><img src="img/slide/slide4.jfif" width="1000" height="350"></li>
					</ul>
				</div>
				<div class="lof-navigator-wapper">
				
					<div onClick="return false" href="" class="lof-next">Next</div>
					<div class="lof-navigator-outer">
						<ul class="lof-navigator">
							<li><img src="img/slide/slide1.jfif" width="70" height="25" /></li>       		
							<li><img src="img/slide/slide.jfif" width="70" height="25" /></li>       		
							<li><img src="img/slide/slide2.jfif" width="70" height="25" /></li>       		
							<li><img src="img/slide/slide3.jfif" width="70" height="25" /></li>       		
							<li><img src="img/slide/slide4.jfif" width="70" height="25" /></li>       		
						</ul>
					</div>
					<div onClick="return false" href="" class="lof-previous">Previous</div>
				</div> 
			</div>
			<div id="main-content">
				<div id="left-content">
					<?php include("home_include/left_content.php");?>
				</div>
				
				<div id="center-content">
					
					<?php include("content_page.php"); ?>
					
					
					
				</div>
				
				<div id="right-content">
					<?php include("home_include/right_content.php"); ?>
				</div>
			</div>
			<div id="doitac">
				<div id="center2">
					<div id="doitaccon">
						<h4>ĐỐI TÁC</h4>
						<div id="thanhdoc">
							<img src="img/thanhdoc.png">
						</div>
						<div class="boxeSlide" style="overflow:hidden;">
							<div class="sildeShow">
								<ul id="random">
									<li> 
										<a href="#"><img src="img/samsung.png" alt="Sam Sung" title="Sam Sung" /></a>
									</li>
									<li> 
										<a href="#"><img src="img/sony.png" alt="Sony" title="Sony" /></a>
									</li>
									<li> 
										<a href="#"><img src="img/lg.png" alt="LG" title="LG" /></a>
									</li>
									<li> 
										<a href="#"><img src="img/nokia.png" alt="Nokia" title="Nokia" /></a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<div id="menu-footer">
				<ul>
					<li><a href="index.php">TRANG CHỦ</a></li>
					<li><a href="index.php?content=sanpham">SẢN PHẨM</a>
						<li><a href="index.php?content=phukien">PHỤ KIỆN</a></li>
						<li><a href="index.php?content=khuyenmai">KHUYỂN MÃI</a></li>
					
					</ul>
				</div>
				<div id="bg-footer">
					<div id="noidungfooter">
						<div id="lg-footer">
							<h3><a href="index.php">logo</a></h3>
						</div>
						<div id="noidung">
							<ul>
								<li><span id="tencongty">Công Ty TNHH ĐIỆN THOẠI DEV</span></li> <br>
								
								<li>Địa chỉ: Cần Thơ </li>
								<li>Điện thoại: 0939999999 - Hotline:  0939999999</li>
								<li>Email:  support@dev.info</li>
							</ul>
						</div>
						<div id="thanhngang">
							<img src="img/thanhngang-footer.png">
						</div>
					
				</div> 
			</div>
		</div>
	</div>
</div>
</body>
</html>