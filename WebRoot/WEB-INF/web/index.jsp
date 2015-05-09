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
<div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >网页模板</a></div>

<div class="welcome-part">

<!--Health care start-->
<div class="health-care">
	<h1>医生:xx</h1>
	<h2><img src="${pageContext.request.contextPath}/images/web/health-image.png" width="270" height="103" alt="" /></h2>
	<h3>介绍
	Lorem Iprinting and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer ....
	
	</h3>
	<h4>
	<a href="#">预约</a>
	</h4>
</div>
<!--Health care End-->

<!--Featured Tools start-->
<div class="tools">
<h1>Featured Tools <span>Online Bill Pay</span></h1>
<h2>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled ...</h2>
<div class="log-in">
<h4>Online service login</h4>
<div class="input"><input name="" type="text"  class="log-in-input-bg" value="Enter Your User Name"/></div>
<div class="input"><input name="" type="text"  class="log-in-input-bg" value="Password"/></div>
<h5><a href="#"><img src="${pageContext.request.contextPath}/images/web/log-in.png" width="103" height="29" alt="" /></a></h5>
</div>
</div>
<!--Featured Tools End-->

<!--Health News start-->
<div class="news">
<h1>Today's  <span>Health News</span></h1>
<div class="list">

<ul>
<li>Low Vitamin D Levels Linked to Weight Gain in Older Women </li>
<li>Secondhand Smoke Linked to Raised Diabetes Risk  </li>
<li>Discovery of ‘Master Molecule’ Could Improve Stem Cell...</li>
<li>Low Vitamin D Levels Linked to Weight Gain in Older Women  </li>
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
<h1>James Washine <span>Heart Problem</span></h1>
<h2>Secondhand Smoke Linked to Raised Diabetes Risk  Discovery....</h2>
</div>
</div>
<!--Testimonial 1 End-->

<!--Testimonial 2 start-->
<div class="testimonial-inner">
<div class="testimonial-img"><img src="${pageContext.request.contextPath}/images/web/rose-image.png" width="127" height="134" alt="" /></div>
<div class="testimonial-text">
<h1>Rose Bander <span> Plastic surgery</span></h1>
<h2>There are many variations of passages of Lorem Ipsum available...</h2>
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