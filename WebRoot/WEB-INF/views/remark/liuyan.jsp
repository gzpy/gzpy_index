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
<title>在线留言_广州品韵信息科技有限公司</title>
<meta name="author" content="广州品韵信息科技有限公司">
<meta name="copyright" content="广州品韵信息科技有限公司">
<meta name="company" content="广州品韵信息科技有限公司">

<link href="${ctx}/css_files/style.css" rel="stylesheet" type="text/css">
<script type="text/javascript"
	src="${ctx}/css_files/jquery-1.8.0.min.js"></script>
<script src="${ctx}/css_files/jquery-1.9.1.min.js"
	type="text/javascript"></script>
<script src="${ctx}/css_files/common.js" type="text/javascript"></script>
</head>
<body>

	<div class="top">
		<div class="topbox">
			<div class="logo">
				<img src="${ctx}/css_files/logo.png">
			</div>
			<div id="container">
				<div class="menu">
					<!--nav开始-->
					 <div id="navigation">
			          <div id="smoothmenu1" class="ddsmoothmenu">
			            <ul>
			              <li><a style="background:none;" href="${ctx }/index.do"><font color="#0000FF" face="微软雅黑">首页</font></a></li>
			              
			              <li style="z-index: 96;"> <a href="${ctx }/news/newsCenter.do" class=""><font face="微软雅黑">新闻资讯</font></a>
			                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
			                    <li> <a href="${ctx }/news/news.do?t=gs">公司新闻</a> </li>
			                    <li> <a href="${ctx }/news/news.do?t=hy">行业动态</a> </li>
			                </ul>
			              </li>
			              
			              <li style="z-index: 100;"> <a href="${ctx }/product/productCenter.do" class="product_bg"><font face="微软雅黑">产品中心</font></a>
			                <ul style="top: 40px; visibility: visible; left: 0px; width: 200px; display: none;">
			                   	<c:forEach items="${list_product }" var="product"> 
			                   		 <li> <a href="${ctx }/product/productDetail.do?pid=${product.productId}" class="qwe">${product.productTitle}</a> </li>
			                   	</c:forEach>
			                </ul>
			              </li>
			              
			              <li style="z-index: 99;"> <a href="${ctx}/project/JJFAAll.do" class="jiejue"><font face="微软雅黑">解决方案</font></a>
			                <ul style="top: 40px; visibility: visible; left: 0px; width: 240px; display: none;">
			                 <c:forEach items="${projectList}" var="project" begin="0" end="1" step="1">
			                   <li> <a href="${ctx}/project/JJFA.do?pd=${project.projectId}" class="asd">${project.projectTitle}</a> </li>
			                 </c:forEach>
			                </ul>
			              </li>
			              
			               <li style="z-index: 98;"> <a href="${ctx}/pinyun/aboutPinyun.do" class=""><font face="微软雅黑">走进品韵</font></a>
			                <ul style="top: 40px; visibility: visible; left: 0px; width: 90px; display: none;">
			                    <li> <a id="a71" href="${ctx}/pinyun/aboutPinyun.do">关于品韵</a> </li>
			                    <li> <a id="a74" href="${ctx}/pinyun/about.do?tn=gszz">公司资质</a> </li>
			                    <li> <a id="a75" href="${ctx}/pinyun/about.do?tn=gsry">公司荣誉</a> </li>
			                </ul>
			              </li>
			              
			              <li style="z-index: 97;">
			                <a href="${ctx}/remark/Remark.do" flag="88" class=""><font face="微软雅黑">在线留言</font></a>
			              </li>
			              
			              <li style="z-index: 95;">
			                <a href="${ctx }/pinyun/connection.do" flag="88" class=""><font face="微软雅黑">联系我们</font></a>
			              </li>
			            </ul>
			            <br style="clear: left" />
			          </div>
			        </div>
					<!--nav结束-->
					<script type="text/javascript"
						src="${ctx}/css_files/ddsmoothmenu.js"></script>
					<script type="text/javascript">
						ddsmoothmenu.init({
							mainmenuid : "smoothmenu1", //menu DIV id
							orientation : 'h', //Horizontal or vertical menu: Set to "h" or "v"
							classname : 'ddsmoothmenu', //class added to menu's outer DIV
							//customtheme: ["#1c5a80", "#18374a"],
							contentsource : "markup" //"markup" or ["container_id", "path_to_menu_file"]
						})
					</script>
					<div class="index_con"></div>
				</div>
			</div>
		</div>
	</div>



	<!--
<div class="demo_banner"><img src="${ctx}/css_files/demo_banner2.jpg" width="100%" height="355px"></div>
-->
	<div id="inner" style="width:1200px;text-align:center;margin:5px auto;">
		<div class="hot-event">
			<div class="event-item">

				<img src="${ctx}/css_files/demo_banner2.jpg" class="photo"
					style="width:96%; height: 450px;" alt="banner"> </a>
			</div>
		</div>
	</div>
	<div class="solution_box">
		<div class="solution_left_box">
			<div class="solution_menu_box">
				<div class="solution_menu_box_title">
					<font color="#666666" face="微软雅黑">在线留言</font>
				</div>

				<a href="#">
					<div class="yun">
						<img src="${ctx}/css_files/yun.jpg" width="255" height="82">
					</div>
				</a><a href="#">
					<div class="yun">
						<img src="${ctx}/css_files/lianxi_pic.jpg" width="255" height="82">
					</div>
				</a>
			</div>

			<div class="solution_right_box">
				<div class="solution_right_box_t_bg">
					<div class="neiye_title">
						<font face="微软雅黑" color="#0033FF">在线留言</font>
					</div>
					<div class="intermap">
						当前位置:<a href="${ctx }/index/index.do" class="a3">首页</a>&gt;&gt;<font
							color="#FF0000">在线留言</font>
					</div>
				</div>
				<div class="solution_fenlei_no1_box">
					<tr>
						<td colspan="2" class="neiye_con">

						 	<form method="post" name="form1" id="form1">
								<br>
								<table width="500" border="0" align="center" cellpadding="0"
									cellspacing="0" class="graya12">
									<tbody>

										<tr>
											<td height="30" class="graya14"><div align="center"
													class="STYLE2"></div></td>
											<td>&nbsp;&nbsp; <span>姓名：</span> <input name="name"
												type="text" class="form1" id="name"></td>
										</tr>

										<tr>
											<td height="30" class="graya14"><div align="center"
													class="STYLE2"></div></td>
											<td>&nbsp;&nbsp; 邮箱： <input name="email" type="text"
												class="form1" id="email"></td>
										</tr>
										<tr>
											<td height="30" class="graya14"><div align="center"
													class="STYLE2"></div></td>
											<td>&nbsp;&nbsp; 电话： <input name="tel" type="text"
												class="form1" id="tel"></td>
										</tr>

										<tr>
											<td class="graya14"><div align="center" class="STYLE2"></div></td>
											<td><label> &nbsp;&nbsp; 内容：<textarea name="remarkContent" cols="50" rows="10" class="form1" id="remarkContent" style="margin-left: 65px;margin-top:-10px;"></textarea>
											    </label></td>
										</tr>
										<tr>
											<td height="40" colspan="2"><label>
													&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											</label>
												<div align="center">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tbody>
															<tr>
																<td>&nbsp;&nbsp;
																	<div align="center">
																		<input name="Submit2" type="button" id="btn"
																			class="form1" value="发 送">
																		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input name="Submit"
																			type="reset" class="form1" value="重 置">
																	</div>
																</td>
															</tr>
														</tbody>
													</table>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</form>				
						</td>
					</tr> 			
				</div>
			</div>

		</div>
		<div class="foot">
			<div class="foot_text">Copyright(C)2013-2016 广州品韵信息科技有限公司 版权所有
				粤ICP备16089509号</div>
		</div>
</body>
</html>
<script>
	$(document).ready(function() {

		$("#btn").click(function() {
			var params = {};
			params.name = $("#name").val();
			params.email = $("#email").val();
			params.tel = $("#tel").val();
			params.remarkContent = $("#remarkContent").val();

			$.ajax({
				url : "${ctx}/remark/saveRemark.do",
				type : "post",//提交的方式
				data : params,
				success : function(msg) {
					if (msg == "success") {
						alert("留言成功");
						window.location.href = "${ctx}/remark/Remark.do";
					} else
						alert("留言失败");
				}
			});
		});
	});
</script>