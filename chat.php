<meta http-equiv="content-type" content="text/html; charset=UTF-8" />

<style>
    *{margin:0;padding:0;}
    body{background:#6c6761;}
    .ipad{position:relative;width:400px;height:507px;margin:60px auto;background:#000 url(bg.png) no-repeat;border-radius: 30px;}
    .clearFixed:after{content:"";display: block;clear:both;}
    .clearFixed{zoom:1;}
    ul{list-style: none;position:absolute;padding:0 10px;width:300px;height:350px;overflow:scroll;left:40px;top:80px;}
    li{width:180px;margin-top:5px;float:left;font-size: 12px;color:#6c6761;background:#8cac7b;border-radius: 5px;}
    em{padding-left:1em;font-style:normal;font-size: 12px;color:#c5d9bf;}
    i{padding-left:1em;font-style:normal;font-weight:bold;font-size: 12px;color:#0066cc;}
    p{text-indent: 2em;}
    .myself{float:right;}
    .msg{position:absolute;bottom:46px;left:40px;width:320px;background:#ccc;}
    .msg span{list-style: 16px;font-size: 14px;color:#6c6761;}
    .inputTxt{margin-left:10px;width:80%;}
    .send{position:absolute;bottom:9px;left:186px;width:28px;height:28px;background:#c09853;border-radius: 100%;opacity: 0;}
    .send:active{opacity:0.2;}
</style>

<script type="text/javascript" src="jquery-1.8.3.min.js"></script>

<div class="ipad">
    <p style="color:#fff;text-align: center;font-size: 25px;">welcome and chat on line</p>
    <ul class="clearFixed message">

    </ul>
    <div class="msg"><span class="nickname"></span><input type="text" name="msg" class="inputTxt" placeholder="输入留言"/></div>
    <a href="javascript:;" class="send">发送</a>
</div>
<script type="text/javascript" src="http://www.coding123.net/getip.ashx?js=1"></script>
<script type="text/javascript">
$(function(){

    var nickname=prompt("请输入4个字内的用户名","")
    var user;

    var ul=$("ul").eq(0);
    if(nickname.length>0&& nickname.length<8)
    {

        user = $(".nickname").html(nickname);
        $.ajax({
            type: "POST",
            url: "msg.php",
            dataType: "json",
            async:false,//表示同步，即success之后，才向后执行
            cache:false,
            data: {"nickname":nickname,"ip":ip},
            success: function(json)
            {
                alert("成功了")
				/*
                var li="";
				
                for(var i=0;i<json.length;i++)
                {
                    //$(".nickname").html(json[i]['nickname']);
                        li+="<li><em>时间:"+json[i]['time']+"</em><br/><i>"+json[i]['nickname']+"：</i><span>"+json[i]['msg']+"</span></li>";
                     ul.html(li);
                }
               */
            },
            error:function()
            {
                alert("ajax链接错误")
            }
        });
    }
    else
    {
        nickname=prompt("请输入4个字内的用户名","")
    }

 $(".send").click(function()//点击发送内容
    {
        upMsg();
		  
    });


   function upMsg()//上传数据
    {

        var nickname=$(".nickname").html();
        var txt=$(".inputTxt").val();

        console.log("dd");
        $.ajax({
            type: "POST",
            url: "msg.php",
            dataType: "json",
            data: {"nickname":nickname,"msg":txt},
            success: function(json)
            {     /*
                var li="";
                for(var i=0;i<json.length;i++)
                {
                    li+="<li><em>时间:"+json[i]['time']+"</em><br/><i>"+json[i]['nickname']+"：</i><span>"+json[i]['msg']+"</span></li>";
                }
                ul.html(li);
                $(".inputTxt").val("");
				*/
            },
            error:function()
            {
                alert("提交链接错误")
            }
        });
    }

   //var t=setInterval(getMsg,300);//不断获取后端数据
      
	$(document).ready(function(){
	 getMsg();
	 });
	  
	   
	function getMsg()//获取数据
    {

        //clearTimeout(t);
        $.ajax({
            type: "POST",
            url: "msg.php",
            dataType: "json",
            success: function(json)
            {
                var li="";
                for(var i=0;i<json.length;i++)
                {
                    li+="<li><em>时间:"+json[i]['time']+"</em><br/><i>"+json[i]['nickname']+"：</i><span>"+json[i]['msg']+"</span></li>";
                }
                ul.html(li);
                t = setTimeout(getMsg, 300);
            },
            error:function()
            {
                alert("提交链接错误");
                t = setTimeout(getMsg, 300);
            }
        });
    }
     
})

</script>
