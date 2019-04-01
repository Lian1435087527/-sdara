<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		<link href="<%=path %>/css/slicebox.css" type="text/css" rel="stylesheet" />
		<link href="<%=path %>/css/custom.css" type="text/css" rel="stylesheet" />
		
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		<script language="JavaScript" src="<%=path %>/js/modernizr.custom.46884.js" type="text/javascript"></script>
	    <script type="text/javascript">
	         function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
	    </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		
		<div class="page_row">
			<div class="page_main_msg left">
			    <div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							网站新闻
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<ul id="sb-slider" class="sb-slider" align="left" style="max-width:650px; overflow:hidden;white-space:nowrap;">
									<li class="sb-current" style="display:block;">
										<A href="#" target="_blank">
											<img src="<%=path %>/img/d1.jpg" alt="image1"/>
										</A>
										<div class="sb-description">
											<h3>软件项目管理1</h3>
										</div>
									</li>
									<li class style="display:none;">
										<A href="#" target="_blank">
											<img src="<%=path %>/img/d2.jpg" alt="image2"/>
										</A>
										<div class="sb-description">
											<h3>软件项目管理2</h3>
										</div>
									</li>
									<li class style="display:none;">
										<A href="#" target="_blank">
											<img src="<%=path %>/img/d3.jpg" alt="image3"/>
										</A>
										<div class="sb-description">
											<h3>软件项目管理3</h3>
										</div>
									</li>
								</ul>
								<div id="nav-arrows" class="nav-arrows" style="display:block;">
									<A href="#">Next</A>
									<A href="#">Previous</A>
								</div>
							</div>
						</div>
					</div>
				</div>		
			
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							最新作业
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
						              <tr align="center" bgcolor="#FAFAF1" height="22">
						                  <td>名称</td>
						                  <td>附件</td>
						                  <td>下载</td>
						              </tr>
									  <s:iterator value="#request.zuoyeList" id="zuoye">
									  <tr align='center' bgcolor="#FFFFFF" height="22">
										  <td><s:property value="#zuoye.mingcheng"/></td>
										  <td><s:property value="#zuoye.fujianYuanshiming"/></td>
										  <td><a href="#" onclick="down1('<s:property value="#zuoye.fujian"/>','<s:property value="#zuoye.fujianYuanshiming"/>')" style="font-size: 10px;color: red">down</a></td>
									  </tr>
									  </s:iterator>
		        			    </table>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							最新教程
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
						              <tr align="center" bgcolor="#FAFAF1" height="22">
						                  <td>名称</td>
						                  <td>附件</td>
						                  <td>下载</td>
						              </tr>
									  <s:iterator value="#request.docList" id="doc">
									  <tr align='center' bgcolor="#FFFFFF" height="22">
										  <td><s:property value="#doc.mingcheng"/></td>
										  <td><s:property value="#doc.fujianYuanshiming"/></td>
										  <td><a href="#" onclick="down1('<s:property value="#doc.fujian"/>','<s:property value="#doc.fujianYuanshiming"/>')" style="font-size: 10px;color: red">down</a></td>
									  </tr>
									  </s:iterator>
		        			    </table>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 右边的用户登录。留言。投票 -->
			<div class="page_other_msg right">
				<div class="left_row">
					<div class="list">
						<div class="list_bar">用户登录</div>
						<div class="list_content">
							<div id="div">
								<jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站公告</div>
				        <div class="list_content">
				            <div id="div"> 
								<s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
					        </div>
					    </div>
				    </div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站日历表</div>
				        <div class="list_content">
				            <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					    </div>
				    </div>
			    </div>
			</div>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		<div class="foot">
		   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	    </div>
	    
	    <script type="text/javascript" src="http://cdn.staticfile.org/jquery/1.8.2/jquery.min.js"></script>
	    <script type="text/javascript" src="js/jquery.slicebox.js"></script>
		<script type="text/javascript">
			$(function() {
				
				var Page = (function() {

					var $navArrows = $( '#nav-arrows' ).hide(),
						$navOptions = $( '#nav-options' ).hide(),
						$shadow = $( '#shadow' ).hide(),
						slicebox = $( '#sb-slider' ).slicebox( {
							onReady : function() {

								$navArrows.show();
								$navOptions.show();
								$shadow.show();

							},
							orientation : 'h',
							cuboidsCount : 3
						} ),
						
						init = function() {

							initEvents();
							
						},
						initEvents = function() {

							// add navigation events
							$navArrows.children( ':first' ).on( 'click', function() {

								slicebox.next();
								return false;

							} );

							$navArrows.children( ':last' ).on( 'click', function() {
								
								slicebox.previous();
								return false;

							} );

							$( '#navPlay' ).on( 'click', function() {
								
								slicebox.play();
								return false;

							} );

							$( '#navPause' ).on( 'click', function() {
								
								slicebox.pause();
								return false;

							} );

						};

						return { init : init };

				})();

				Page.init();

			});
		</script>
	</body>
</html>
