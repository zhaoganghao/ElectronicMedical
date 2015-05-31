<%@ include file="/WEB-INF/web/common/head.jsp"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<body>

<!--Site start-->
<div id="wrapper">


<!--Header start-->
<div id="header">
<div class="header">

<!--Logo Part start-->
<%@ include file="/WEB-INF/web/common/logo.jsp"%>
<!--Logo Part End-->

<!--Menu and Banner Part start-->
<div class="menu-and-banner">

<!--Menu Part start-->
<%@ include file="/WEB-INF/web/common/navigate.jsp"%>
<!--Menu Part End-->

<!--Banner Part start-->
<div class="banner">

<div id="example">
			
	  <div id="slides">
			  <div class="slides_container">
					<div class="slide">
					  <a href="#"><img src="${pageContext.request.contextPath}/images/web/slide-1.png" width="1005" height="453" alt="Slide 1"/></a>
						<div class="caption" style="bottom:0">
							<p>健康关怀</p>
						</div>
					</div>
					<div class="slide">
					  <a href="#"><img src="${pageContext.request.contextPath}/images/web/slide-2.png" width="1005" height="453" alt="Slide 1"/></a>
						<div class="caption">
							<p>我们服务</p>
						</div>
					</div>
					<div class="slide">
					  <a href="#"><img src="${pageContext.request.contextPath}/images/web/slide-3.png" width="1005" height="453" alt="Slide 1"/></a>
						<div class="caption">
							<p>经验十足的医生</p>
						</div>
					</div>
					<%-- <div class="slide">
					  <a href="#" ><img src="${pageContext.request.contextPath}/images/web/slide-4.png" width="1005" height="453" alt="Slide 1"/></a>
						<div class="caption">
							<p>我们服务</p>
						</div>
					</div> --%>
					
					
					
				</div>
				<a href="#" class="prev"><img src="${pageContext.request.contextPath}/images/web/arrow-prev.png" width="39" height="54" alt="Arrow Prev"/></a>
				<a href="#" class="next"><img src="${pageContext.request.contextPath}/images/web/arrow-next.png" width="39" height="54" alt="Arrow Next"/></a>
			</div>
			
		</div>

</div>
<!--Banner Part End-->

</div>
<!--Menu and Banner Part End-->

</div>
</div>
<!--Header End-->

<!--Content start-->
<div id="content">
<div class="content">

<div class="left-bg"></div>
<div class="content-center">

<div class="welcome-part">

<!--Health care start-->
<div class="health-care">
	<h1>医生团队</h1>
	<h2><img src="${pageContext.request.contextPath}/images/web/health-image.png" width="270" height="103" alt="" /></h2>
	<h3>介绍
	拥有专业的医师，丰富的经验，正规的毕业院校	
	</h3>
	<h4>
	<a href="#">预约</a>
	</h4>
</div>
<!--Health care End-->

<!--Featured Tools start-->
<div class="tools">
<h1>提供的服务 <span>在线医疗</span></h1>
<h2>
在线医疗主要包括常规病的在线会诊及相关医疗知识的咨询。其中常规病的在线会诊模式主要为远程会诊，即通过传输现场实时的音频、视频信息，使远程的医生和本地的病人能“面对面”地交流，诊疗信息的传递和交互主要通过音频、视频信号进行。患者经由这样的渠道可免去前往医院的麻烦，在家即可获得专业的医师指导意见，同时避免了盲目用药或拖延病症的情况。相关医疗知识咨询涉及术后疗养、婴幼儿保健、慢性病调理等大众关注度高的方面。通过专业医生定期轮班在线坐诊的方式，提供一对一的咨询服务，更贴近个案，使服务更加人性化、个性化。

</h2>
</div>
<!--Featured Tools End-->

<!--Health News start-->
<div class="news">
<h1>今日  <span>健康新闻</span></h1>
<div class="list">

<ul>
<li>上班族保健养生知识 </li>
<li>小卧室如何布置出大空间  </li>
<li>亚健康的症状有哪些，如何避免？</li>
<li>如何预防感冒，感冒吃什么好？  </li>
</ul>

<h3><a href="#"><img src="${pageContext.request.contextPath}/images/web/read-more.png" width="103" height="29" alt="" /></a></h3>
</div>
</div>
<!--Health News End-->

<div class="divater"><img src="${pageContext.request.contextPath}/images/web/divate-co.png" width="933" height="2" alt="" /></div>
</div>

<!--Testimonial Part start-->
<div class="testimonial-part">


<!--Testimonial 1 start-->
<div class="testimonial-inner">
<div class="testimonial-img"><img src="${pageContext.request.contextPath}/images/web/james-image.png" width="127" height="134" alt="" /></div>
<div class="testimonial-text">
<h1>陈医生<span>心脏专家</span></h1>
<h2>吸二手烟会增加患心脏病的风险</h2>
</div>
</div>
<!--Testimonial 1 End-->

<!--Testimonial 2 start-->
<div class="testimonial-inner">
<div class="testimonial-img"><img src="${pageContext.request.contextPath}/images/web/rose-image.png" width="127" height="134" alt="" /></div>
<div class="testimonial-text">
<h1>Rose Bander <span>国外著名专家</span></h1>
<h2>世界著名的大学毕业，拥有丰富的工作经验，是我们平台的主治医生</h2>
</div>
</div>
<!--Testimonial 2 End-->

</div>
<!--Testimonial Part End-->


</div>
<div class="right-bg"></div>


</div>
</div>
<!--Content End-->

<%@ include file="/WEB-INF/web/common/foot.jsp"%>