<?php 
	$con = mysqli_connect("localhost","root","","codeweb");
		if(isset($_GET['action']))
    {    $action=$_GET['action'];}
    else $action=""; 
		if(isset($_GET['content']))
				{
					switch ($_GET['content'])
					{
						
						case "timkiem":
							include ('timkiem.php');
							break;
						case "dangky":
							include ('dangky.php');
							break;
						case "dangnhap":
							include ('dangnhap.php');
							break;
						case "cart":
							include ('cart/index.php');
							break;
						case "sanpham":
							include ('sanpham.php');
							break;
						case "phukien":
							include ('phukien.php');
							break;
						case "hethang":
							include ('hethang.php');
							break;
						case "khuyenmai":
							include ('khuyenmai.php');
							break;
					}
				}
			elseif(isset($_GET['madm'])) {
					$sql = "SELECT * FROM sanpham  WHERE madm='{$_GET['madm']}'";	
					if(isset($GET['madm']))
					{
						$sql.="where madm='".$_GET['madm']."'";
					}
						
					
						if(!isset($_GET['page'])){  
						$page = 1;  
						} else {  
						$page = $_GET['page'];  
						}  

						$max_results = 12;  

						$from = (($page * $max_results) - $max_results);  


						$sql.=  "LIMIT $from, $max_results";
						
		
					$query=mysqli_query($con,$sql);
					$total=mysqli_num_rows($query);
					if($total>0)
					{
					?>
						
						<div class="sanpham">	
							<?php
							$sql1="select tendm from danhmuc where madm='{$_GET['madm']}'";
							$query1=mysqli_query($con, $sql1);
							$row=mysqli_fetch_array($query1);
							?>
						<h2><?php echo $row['tendm']?></h2>
							<div class="sanphamcon">
								
								<?php 
								  while ($result=mysqli_fetch_array($query))
								  { ?>
								
								<div class="dienthoai">
									<?php 
										if($result['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $result['khuyenmai1']?>%</h3></div>
									<?php } ?>
									<a href="#"><img  src="img/uploads/<?php echo $result['hinhanh'];?>"></a>				
									<p><a href="#" ><?php echo $result['tensp'];?></a></p>
									<h4><?php echo number_format(($result['gia']*((100-$result['khuyenmai1'])/100)),0,",",".");?></h4>
									<div class="button">
										<ul>
											
											<li>
												<h5><a  href="index.php?content=cart&action=add&idsp=<?php echo $result['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div>
								</div>
								<?php } ?>
								
							</div>
							
						</div>
						<div class="phantrang">
						
						</div>			<?php 
					}
					else {echo "Không có sản phẩm nào";}
				}
				else {
		
	?>
				<div class="sanpham">			
						<h2>ĐIỆN THOẠI BÁN CHẠY</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql1="select * from sanpham inner join danhmuc on sanpham.madm = danhmuc.madm where dequi=1 order by daban  DESC limit 6 ";
							$result1= mysqli_query($con, $sql1);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result1))
						  { ?>
						
						<div class="dienthoai">
							<?php 
										if($row['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $row['khuyenmai1']?>%</h3></div>
									<?php } ?>
							<h1><a href="#"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
							<p><a href="#" ><?php echo $row['tensp'];?></a></p>
							<h4>Giá: <?php echo number_format(($row['gia']*((100-$row['khuyenmai1'])/100)),0,",",".");?></h4>
							<div class="button">
										<ul>
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div>
						</div>
						<?php } ?>
						
					</div>
					
				</div>
				
                <div class="sanpham">			
						<h2>ĐIỆN THOẠI MỚI</h2>
					<div class="sanphamcon">
					    <?php 
						    $sql1="select * from sanpham inner join danhmuc on sanpham.madm = danhmuc.madm where dequi=1 order by idsp  DESC limit 6 ";
							$result1= mysqli_query($con , $sql1);
						?>
						<?php 
						  while ($row=mysqli_fetch_array($result1))
						  { ?>
						
						<div class="dienthoai">
							<?php 
										if($row['khuyenmai1']>0)
										{
									?>
									<div class="moi"><h3>-<?php echo $row['khuyenmai1']?>%</h3></div>
									<?php } ?>
							<h1><a href="#"><img  src="img/uploads/<?php echo $row['hinhanh'];?>"></a></h1>				
							<p><a href="#" ><?php echo $row['tensp'];?></a></p>
							<h4><?php echo number_format(($row['gia']*((100-$row['khuyenmai1'])/100)),0,",",".");?></h4>
							<div class="button">
										<ul>
											
											<li>
												<h5><a href="index.php?content=cart&action=add&idsp=<?php echo $row['idsp'] ?>"><button>Cho vào giỏ</button></a></h5>
											</li>
										</ul>
									</div>
						</div>
						<?php } ?>
						
					</div>
					
				</div>
	<?php } ?>