
<?php
$con = mysqli_connect("localhost","root","","codeweb");
if($action="insert")
{
$hoten=$_POST['hoten'];
$dienthoai=$_POST['dienthoai'];
$diachi=$_POST['diachi'];
$email=$_POST['email'];
$phuongthuc=$_POST['phuongthuc'];
$ngay=date('Y-m-d');
		if(isset($_SESSION['idnd'])){
		
		
			$sql=mysqli_query($con, "select * from nguoidung where idnd='".$_SESSION['idnd']."'");
			$row=mysqli_fetch_array($sql);
			
			$idnd=$row['idnd'];
	
$sql="INSERT INTO hoadon(idnd,hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$idnd','$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";

}
	else 
	$sql="INSERT INTO hoadon(hoten,diachi,dienthoai,email,ngaydathang,trangthai) VALUES 
('$hoten', '$diachi', '$dienthoai', '$email', '$ngay','1')";

	mysqli_query($con, $sql);
	
    $mahd=mysqli_insert_id();
	
    foreach($_SESSION['cart'] as $stt => $soluong)
            {
               $sql="select * from sanpham where idsp=$stt";
               $rows=mysqli_query($con, $sql);
               $row=mysqli_fetch_array($rows);
              
               $tensp=$row['tensp'];
        
               $gia=$row['gia']*((100-$row['khuyenmai1'])/100);
               $sql1 ="insert into chitiethoadon(mahd,Tensp,Soluong,gia,phuongthucthanhtoan) values('$mahd','$tensp','$soluong','$gia','$phuongthuc')";
              mysqli_query($con ,$sql1);
              
            }
    foreach($_SESSION['cart'] as $stt => $soluong)
            {
               
               $sql="select * from sanpham where idsp=$stt";
               $rows=mysqli_query($con ,$sql);
               $row=mysqli_fetch_array($rows);
               $ban=$row['daban']+$soluong;
               $sql="UPDATE sanpham SET daban='$ban' WHERE idsp = $stt";
               
                mysqli_query($con, $sql);
            }

unset($_SESSION['cart']);
}
?>

<?php 
echo "
							<script language='javascript'>
								alert('Đơn hàng của bạn đã thiết lập thành công chúng tôi sẽ chuyển hàng cho bạn trong thời gian sớm nhất');
								window.open('index.php','_self',3);
							</script>
						";
?>
