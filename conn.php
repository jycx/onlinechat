<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2015/4/2
 * Time: 9:02
 */
header("Content_Type:text/html;charset=utf8");
$conn=mysqli_connect("localhost","root","","inline");
//mysql_select_db("inline",$conn);
mysqli_query($conn,"SET NAMES UTF8") or die ("字符集设置错误:".mysqli_error());


//