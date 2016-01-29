<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/4/18
 * Time: 11:36
 */
require_once("conn.php");
session_start();
$_SESSION['nickname']=$_POST['nickname'];
$nickname=$_SESSION['nickname'];
$msg=$_POST['msg'];
$time=time();
if(isset($msg))
{
    $query=mysqli_query($conn,"SELECT * FROM msg") or die("错误：".mysql_error());
    $inp=mysqli_query($conn,"INSERT INTO msg(nickname,msg,time) VALUES ('$nickname','$msg','$time')");
}


$count_result = mysqli_query($conn,"SELECT count(*) FROM msg");
$count_array = mysqli_fetch_array($count_result);
$pagenum=$count_array['count(*)'];

if($pagenum>=10)
{
    $pageBase=$pagenum-10;
}
else
{
    $pageBase=0;
}
$msgajax = mysqli_query($conn,"select * from msg order by id asc limit $pageBase,10");
$arr=array();
while($rows=mysqli_fetch_array($msgajax))
{
    $rows['time']=date("Y-m-d H:i",$rows['time']);
    array_push($arr,$rows);
}
echo json_encode($arr);
?>