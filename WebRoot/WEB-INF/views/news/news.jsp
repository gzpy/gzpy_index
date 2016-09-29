<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ include file="/include.inc.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>广州品韵信息科技有限公司官方网站</title>
	<meta name="author" content="广州品韵信息科技有限公司"/>
	<meta name="copyright" content="广州品韵信息科技有限公司"/>
	<meta name="company" content="广州品韵信息科技有限公司"/>
	
	<link href="${ctx }/css_files/style.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="${ctx }/css_files/jquery-1.js"></script>
	<script src="${ctx }/css_files/jquery-1_002.js" type="text/javascript"></script>
	<script src="${ctx }/css_files/common.js" type="text/javascript"></script>
</head>

<body>

<div class="top">
  <div class="topbox">
    <div class="logo"> <img src="${ctx }/css_files/logo.jpg"/></div>
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
              
              <li style="z-index: 99;"> <a href="jiejue.html" class="jiejue"><font face="微软雅黑">解决方案</font></a>
                <ul style="top: 40px; visibility: visible; left: 0px; width: 240px; display: none;">
                  <li> <a href="wanggehua_jiejue.html" class="asd">社区网格化解决方案</a> </li>
                  <li> <a href="danwei_jiejue.html" class="asd">重点单位管理解决方案</a> </li>
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
            <br style="clear: left"/>
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

 <div id="inner" style="width:1200px;text-align:center;margin:5px auto;">
        <div class="hot-event">
        	<div class="event-item">
     			<img src="${ctx }/css_files/demo_banner4.jpg" class="photo" style="width:96%; height: 450px;" alt="banner"/>
            </div>
        </div>
 </div>
<div class="solution_box">	
  <div class="solution_left_box">
	<div class="solution_menu_box">
	  <div class="solution_menu_box_title">
   	  	<font color="#666666" face="微软雅黑">新闻资讯</font>
	  </div>
	  <div class="solution_menu_box_title_no2">
	  		<a href="${ctx }/news/toNews.do?type=gs" class="a2">公司新闻</a>
	  </div>
	  <div class="solution_menu_box_title_no2">
	  		<a href="${ctx }/news/toNews.do?type=hy" class="a2">行业动态</a>
	  </div>
  
      <div class="yun">
      	<a href="#"><img src="${ctx }/css_files/yun.jpg" height="82" width="255"/></a>
      </div>
	  <div class="yun">
	  	<a href="#"><img src="${ctx }/css_files/lianxi_pic.jpg" height="82" width="255"/></a>
	  </div>
   </div>
  </div>
	
  <div class="solution_right_box">
    <div class="solution_right_box_t_bg">
    	<div class="neiye_title">
			<font color="#0033FF" face="微软雅黑">新闻中心</font>
		</div>
		<div class="intermap">
	  		当前位置:<a href="${ctx }/index/toIndex.do" class="a3">首页</a> &gt;&gt;  <font color="#FF0000">新闻资讯</font>
	  	</div>
    </div>
    <div class="solution_fenlei_no1_box">
        <div class="solution_fenlei1_t">
          <div class="company_names"><font face="微软雅黑" color="#0033FF">公司新闻</font></div>   
        </div>  
       	<div class="news_center">
    	<ul>
         	<li><a href="${ctx }/news/toNewsDetail.do?newsId=${news_gs.newsId}"><b>「公司新闻」${news_gs.newsTitle }</b><span>${news_gs.issueDate }</span></a></li>
        </ul>
    	</div>
	    <div class="solution_fenlei1_t">
	         <div class="company_names"><font face="微软雅黑" color="#0033FF">行业动态</font></div>
	    </div>
	 	<div class="news_center">
	    	<ul>
	         	<li><a href="${ctx }/news/toNewsDetail.do?newsId=${news_hy.newsId}"><b>「行业动态」${news_hy.newsTitle }</b><span>${news_hy.issueDate}</span></a></li>       	
	        </ul>
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