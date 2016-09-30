<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/include.inc.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0060)http://www.hehang.net/NewsShow.aspx?NewsCateId=81&&NewsId=46 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>广州品韵信息科技有限公司官方网站</title>
<meta name="author" content="广州品韵信息科技有限公司"/>
<meta name="copyright" content="广州品韵信息科技有限公司"/>
<meta name="company" content="广州品韵信息科技有限公司"/>

<link href="${ctx }/css_files/style.css" rel="stylesheet" type="text/css"/>
<script charset="utf-8" src="${ctx }/css_files/v.js"></script>
<script src="${ctx }/css_files/hm.js"></script>
<script type="text/javascript" src="${ctx }/css_files/jquery-1.8.0.min.js"></script>
<script src="${ctx }/css_files/jquery-1.9.1.min.js" type="text/javascript"></script>
<script src="${ctx }/css_files/jquery-1.2.6.pack.js" type="text/javascript"></script>
<script src="${ctx }/css_files/base.js" type="text/javascript"></script>
<script src="${ctx }/css_files/common.js" type="text/javascript"></script>

<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?0bb9071ba0c82750e86dcdfa3abf5ba4";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</head>

<body>
<div class="top">
  <div class="topbox">
    <div class="logo"> <img src="${ctx }/css_files/logo.png"/></div>
    <div id="container">
      <div class="menu">
        <!--nav开始-->
        <div id="navigation">
          <div id="smoothmenu1" class="ddsmoothmenu">
            <ul>
              <li><a style="background:none;" href="${ctx }/index/toIndex.do"><font color="#0000FF" face="微软雅黑">首页</font></a></li>
              
              <li style="z-index: 96;"> <a href="${ctx }/news/toNewsCenter.do" class=""><font face="微软雅黑">新闻资讯</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
                    <li> <a href="${ctx }/news/toNews.do?type=gs">公司新闻</a> </li>
                    <li> <a href="${ctx }/news/toNews.do?type=hy">行业动态</a> </li>
                </ul>
              </li>
              
              <li style="z-index: 100;"> <a href="${ctx }/product/toProductCenter.do" class="product_bg"><font face="微软雅黑">产品中心</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 200px; display: none;">
                   	<c:forEach items="${list_product }" var="product"> 
                   		 <li> <a href="${ctx }/product/toProductDetail.do?productId=${product.productId}" class="qwe">${product.productTitle}</a> </li>
                   	</c:forEach>
                </ul>
              </li>
              
              <li style="z-index: 99;"> <a href="${ctx}/project/goJJFAAll.do" class="jiejue"><font face="微软雅黑">解决方案</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 240px; display: none;">
                 <c:forEach items="${projectList}" var="project" begin="0" end="1" step="1">
                   <li> <a href="${ctx}/project/goJJFA.do?projectId=${project.projectId}" class="asd">${project.projectTitle}</a> </li>
                 </c:forEach>
                </ul>
              </li>
              
               <li style="z-index: 98;"> <a href="${ctx}/pinyun/toAboutPinyun.do" class=""><font face="微软雅黑">走进品韵</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
                    <li> <a id="a71" href="${ctx}/pinyun/toAboutPinyun.do">关于品韵</a> </li>
                    <li> <a id="a74" href="${ctx}/pinyun/toAbout.do?typeName=gszz">公司资质</a> </li>
                    <li> <a id="a75" href="${ctx}/pinyun/toAbout.do?typeName=gsry">公司荣誉</a> </li>
                </ul>
              </li>
              
              <li style="z-index: 97;">
                <a href="${ctx}/remark/goRemark.do" flag="88" class=""><font face="微软雅黑">在线留言</font></a>
              </li>
              
              <li style="z-index: 95;">
                <a href="${ctx }/pinyun/toConnection.do" flag="88" class=""><font face="微软雅黑">联系我们</font></a>
              </li>
            </ul>
            <br style="clear: left" />
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

<div class="demo_banner">
		<img src="${ctx }/css_files/demo_banner2.jpg" width="100%" height="355px"/>
</div>

<div class="product_box1">
  <div class="product_xq_box">
	<div class="product_xq_t_t">
	  <div class="product_cq_t_name">
	  		<font color="#0066CC" face="微软雅黑">新闻中心</font>
	  </div> 
	  <div class="product_cq_t_name_en">
	  		<font color="#999999" face="微软雅黑">News center</font>	  </div>  
	</div>
	<div class="box_bg_product1">
  		<div class="centerright1">
	<div class="centerrighttitle"></div>		
    <div class="xiangqingtext">
 
	  <div class="xiangqingtitle">
	  		<h2>「${news.typeName }」${news.newsTitle }</h2>
	  </div>
	  <div class="xiangqingtitle1">
	  	<font color="#999999">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;发布时间:${news.issueDate}</font>
	  </div>
	  <div class="xiangqingtitle2">
	  	${news.newsContent}
	  </div> 
	</div>
  </div>
  </div>
</div>
</div>

<div class="foot">
	<div class="foot_text">
	  	Copyright(C)2013-2016 广州品韵信息科技有限公司 版权所有 粤ICP备*********号
	</div>
</div>

</body>
</html>