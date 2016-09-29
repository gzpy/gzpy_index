<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="${ctx}/css_files/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="${ctx}/css_files/jquery-1.8.0.min.js"></script>
<script src="${ctx}/css_files/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx}/css_files/common.js" type="text/javascript"></script>
</head>
<body>
<title>广州品韵信息科技有限公司官方网站</title>
<meta name="author" content="广州品韵信息科技有限公司">
<meta name="copyright" content="广州品韵信息科技有限公司">
<meta name="company" content="广州品韵信息科技有限公司">

<script src="${ctx}/css_files/common.js" type="text/javascript"></script>


<div class="top">
  <div class="topbox">
    <div class="logo"> <img src="${ctx }/css_files/logo.jpg"> </div>
    <div id="container">
      <div class="menu">
        <!--nav开始-->
        <div id="navigation">
          <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
              <li><a style="background:none;" href="index.html"><font color="#0000FF" face="微软雅黑">首页</font></a></li>
              
              <li style="z-index: 96;"> <a href="news.html" class=""><font face="微软雅黑">新闻资讯</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
                    <li> <a href="gs_news.html">公司新闻</a> </li>
                    <li> <a href="hy_news.html">行业动态</a> </li>
                </ul>
              </li>
              
              <li style="z-index: 100;"> <a href="product.html" class="product_bg"><font face="微软雅黑">产品中心</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 200px; display: none;">
                    <li> <a href="wanggehua.html" class="qwe">网格化管理系统</a> </li>
                    <li> <a href="zhongdiandanwei.html" class="qwe">重点单位管理系统</a> </li>
                    <li> <a href="96119.html" class="qwe">96119投诉举报系统</a> </li>


                </ul>
              </li>
              
              <li style="z-index: 99;"> <a href="jiejue.html" class="jiejue"><font face="微软雅黑">解决方案</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 240px; display: none;">
                  <c:forEach items="${projectList}" var="projectlist" begin="0" end="1" step="1"> 
                     <li> <a href="${ctx}/project/goJJFA.do?projectId=${projectlist.projectId}" class="asd">${projectlist.projectTitle}</a> </li>
                  </c:forEach>         
               </ul>
              </li>
              
              <li style="z-index: 98;"> <a href="know_pinyun.html" class=""><font face="微软雅黑">走进品韵</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
                    <li> <a id="a71" href="know_pinyun.html">关于品韵</a> </li>
                    <li> <a id="a74" href="aboutUs_zizhi.html">公司资质</a> </li>
                    <li> <a id="a75" href="aboutUs_honor.html">公司荣誉</a> </li>
                </ul>
              </li>
              
              <li style="z-index: 97;">
                <a href="liuyan.html" flag="88" class=""><font face="微软雅黑">在线留言</font></a>
              </li>
              
              <li style="z-index: 95;">
                <a href="connection_pinyun.html" flag="88" class=""><font face="微软雅黑">联系我们</font></a>
              </li>
            </ul>
            <br style="clear: left">
          </div>
        </div>
        <!--nav结束-->
        <script type="text/javascript" src="${ctx }/css_files/ddsmoothmenu.js"></script>
        <script type="text/javascript">
ddsmoothmenu.init({
mainmenuid: "smoothmenu1", //menu DIV id
orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
classname: 'ddsmoothmenu', //class added to menu's outer DIV
//customtheme: ["#1c5a80", "#18374a"],
contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})
</script>
        <div class="index_con"> </div>
      </div>
    </div>
  </div>
</div>


<!--
<div class="demo_banner"><img src="${ctx }/css_files/demo_banner7.jpg" width="100%" height="355px"></div>
-->
<div id="inner" style="width:1200px;text-align:center;margin:5px auto;">
        <div class="hot-event">
        	<div class="event-item">
     
                    <img src="${ctx }/css_files/demo_banner7.jpg" class="photo" style="width:96%; height: 355px;" alt="banner">
                </a>
            </div>
        </div>
    </div>
<div class="solution_box">
  <div class="solution_left_box">
    <div class="solution_menu_box">
         <div class="solution_menu_box_title"><font color="#666666" face="微软雅黑">解决方案</font></div>
         <c:forEach items="${projectList}" var="projectlist" begin="0" end="1" step="1"> 
            <div class="solution_menu_box_title_no2"><a href="${ctx}/project/goJJFA.do?projectId=${projectlist.projectId}" class="a2">${projectlist.projectTitle}</a></div>
         </c:forEach>

      <a href="#" target="_blank">
      <div class="yun"><img src="${ctx }/css_files/yun.jpg" width="255" height="82"></div>
      </a><a href="connection_pinyun.html">
      <div class="yun"><img src="${ctx }/css_files/lianxi_pic.jpg" width="255" height="82"></div>
      </a><a href="#" target="_blank">
      <div class="yun"><img src="${ctx }/css_files/phone_hours.jpg" width="255" height="82"></div>
      </a></div>
  </div>
  <div class="solution_right_box">
    <div class="solution_right_box_t_bg">
      <div class="neiye_title">
                <font face="微软雅黑" color="#0033FF">解决方案</font>


      </div>
      <div class="intermap">当前位置:<a href="index.html" class="a3">首页</a>&gt;&gt;
                <a href="jiejue.html" class="a3">解决方案
        

        </a>&gt;&gt;<font color="#FF0000">${project.projectTitle}</font>
      </div>
    </div>
    
    
    
    <div class="solution_fenlei_no1_box">
        <c:set var="imagePath" value="${fn:split(project.imagePath, ',')}"/>
        <div class="solution_fenlei1_t">
          <div class="company_names"><font face="微软雅黑" color="#0033FF">${project.projectTitle}</font></div>
   
        </div>
      <p style="text-align: left;"><span style="font-family: 微软雅黑, &#39;Microsoft YaHei&#39;; font-size: 16px;">&nbsp; &nbsp; 
		</span></p>
		<c:forEach items="${imagePath}" var="image" begin="1" step="1">
		  <img src="/gzpy_manage${image}" width="720" height="350px" alt=""><br><br><br><br>
	   </c:forEach>
    </div>
    
    
    
    
  </div>
</div>






<title>广州品韵信息科技有限公司官方网站</title>
<meta name="author" content="广州品韵信息科技有限公司">
<meta name="copyright" content="广州品韵信息科技有限公司">
<meta name="company" content="广州品韵信息科技有限公司">

<script src="${ctx }/css_files/common.js" type="text/javascript"></script>



<div class="foot">
	  <div class="foot_text">
	  		Copyright(C)2013-2016 广州品韵信息科技有限公司 版权所有 粤ICP备*********号


	  </div>
	</div>





</body></html>