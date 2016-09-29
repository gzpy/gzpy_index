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
<head>
	<title>广州品韵信息科技有限公司官方网站</title>
	<link href="${ctx }/css_files/style.css" rel="stylesheet" type="text/css" />
	<script src="${ctx }/css_files/v.htm" charset="utf-8"></script>
	<script src="${ctx }/css_files/hm.js" type="text/javascript"></script>
	<script src="${ctx }/css_files/jquery-1.js" type="text/javascript" ></script>
	<script src="${ctx }/css_files/jquery-1_002.js" type="text/javascript"></script>
	<script src="${ctx }/css_files/jquery.js" type="text/javascript"></script>
	<script src="${ctx }/css_files/common.js" type="text/javascript"></script>
	<script>
		var _hmt = _hmt || [];
		(function() {
			var hm = document.createElement("script");
			hm.src = "//hm.baidu.com/hm.js?0bb9071ba0c82750e86dcdfa3abf5ba4";
			var s = document.getElementsByTagName("script")[0];
			s.parentNode.insertBefore(hm, s);
		})();
	</script>
</head>

<body>
<div class="top">
  <div class="topbox">
    <div class="logo"> <img src="${ctx }/css_files/logo.jpg" /></div>
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
            <br style="clear: left" />
          </div>
        </div>
        <!--nav结束-->
        <script type="text/javascript" src="${ctx }/css_files/ddsmoothmenu.js"></script>
        <script type="text/javascript">
			ddsmoothmenu.init({
				mainmenuid : "smoothmenu1", //menu DIV id
				orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
				classname : 'ddsmoothmenu', //class added to menu's outer DIV
								//customtheme: ["#1c5a80", "#18374a"],
				contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
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
                <a href="#" class="banner">
                    <img src="${ctx }/css_files/10360729053.jpg" class="photo" style="width:100%; height: 467px;" alt="banner"/>
                </a>
            </div>
        </div>
    </div>
    <div id="Div1" style="width:1200px;text-align:center;margin:5px auto;">
        <div class="hot-event">
        	<div class="event-item">
                <a target="_blank" href="${ctx }/product/toProductDetail.do?productName=wgh" class="banner">
                    <img src="${ctx }/css_files/10360847943.jpg" class="photo" style="width:100%; height: 467px;" alt="banner"/>
                </a>
            </div>
        </div>
    </div>
    <div id="Div3" style="width:1200px;text-align:center;margin:5px auto;">
        <div class="hot-event">
        	<div class="event-item">
                <a target="_blank" href="${ctx }/product/toProductDetail.do?productName=zddw" class="banner">
                    <img src="${ctx }/css_files/10360968484.jpg" class="photo" style="width:100%; height: 467px;" alt="banner"/>
                </a>
            </div>
        </div>
    </div>
	 <div id="Div3" style="width:1200px;text-align:center;margin:5px auto;">
        <div class="hot-event">
        	<div class="event-item">
                <a target="_blank" href="${ctx }/product/toProductDetail.do?productName=96119" class="banner">
                    <img src="${ctx }/css_files/首页4.jpg" class="photo" style="width:100%; height: 467px;" alt="banner"/>
                </a>
            </div>
        </div>
    </div>
    <div class="center_box">
	  <div class="anli">
  		<div class="anli_title">
			<img src="${ctx }/css_files/anli_title.jpg" usemap="#Map" border="0" />
			<map name="Map" id="Map">
				<area shape="rect" coords="662,4,716,28" href="jiejue.html"/>
			</map>
		</div>
		
	    <div class="anli_content_box">
		  <div class="anli_content_left">
	  		<div class="anli_conten_l_p">
		    	<img src="${ctx }/css_files/image040-17144454578.jpg" height="100" width="103" />			
		    </div>
			
			<div class="anli_content_l_box">        
				<div class="anli_content_l_box_t">
			  		<div class="anli_jia">
						<img src="${ctx }/css_files/anli_jia.jpg"/>
					</div>
					
				    <div class="anli_t_title">
						<font face="微软雅黑">社区网格化解决方案</font>
					</div>
				</div>
				  
				 <div class="anli_text">
				  	社区网格化解决方案1.系统概述为推进云计算和物联网技术在消防领域的应用，响应公安部消防局提出“消防安全人防与技防并举”的措施。通过“消防安全监管云指…
				 </div>
				  
			     <div class="anli_xiangqing">
				  	<a class="a1" href="wanggehua_jiejue.html">[点击查看详情]</a>
				 </div>
			</div>  
		  </div>
		  <div class="anli_content_left">
	  	  	<div class="anli_conten_l_p">
		    	<img src="${ctx }/css_files/-11264885041.jpg" height="100" width="103"/>		
		   	</div>
		   	
		    <div class="anli_content_l_box">           
			  <div class="anli_content_l_box_t">
		  		<div class="anli_jia">
					<img src="${ctx }/css_files/anli_jia.jpg"/>
				</div>
				
			    <div class="anli_t_title">
					<font face="微软雅黑">重点单位管理解决方案</font>
				</div>
			  </div>
			  
			  <div class="anli_text">
			  		重点单位管理解决方案1.系统概述“特种设备(电梯类)运行安全集中监测系统”是一个集全天候24小时实时监测电梯运行状态的电梯监测系统。系统具有…
			  </div>
			  
		      <div class="anli_xiangqing">
			  		<a class="a1" href="danwei_jiejue.html">[点击查看详情]</a>
			  </div>
		    </div> 
		  </div>		
		</div>		
	  </div>
	  
	  <div class="news_index_right">
		<div class="news_box_title">
			<img src="${ctx }/css_files/news_inex_title_bg.jpg" usemap="#Map2" border="0" />
            <map name="Map2" id="Map2">
            	<area shape="rect" coords="355,15,399,32" href="${ctx }/news/toNewsCenter.do"/>
            </map>
		</div>
		
	    <div class="new_index_liebiao">
		   <ul>
		   	  <c:forEach items="${list_news }" var="news">
		   	  	<li><a href="${ctx }/news/toNewsDetail.do?newsId=${news.newsId}"><span>「${news.typeName}」${news.shortTitle}…</span><b>${news.issueDate }</b></a></li>
		   	  </c:forEach>
            </ul>
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