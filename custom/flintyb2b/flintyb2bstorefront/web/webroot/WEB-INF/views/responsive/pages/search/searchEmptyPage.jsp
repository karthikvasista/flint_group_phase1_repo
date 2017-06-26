<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="template" tagdir="/WEB-INF/tags/responsive/template"%>
<%@ taglib prefix="theme" tagdir="/WEB-INF/tags/shared/theme" %>
<%@ taglib prefix="cms" uri="http://hybris.com/tld/cmstags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<template:page pageTitle="${pageTitle}">

	<c:url value="/" var="homePageUrl" />
	<cms:pageSlot position="SideContent" var="feature" element="div" class="side-content-slot cms_disp-img_slot searchEmptyPageTop">
		<cms:component component="${feature}" element="div" class="no-space yComponentWrapper searchEmptyPageTop-component"/>
	</cms:pageSlot>
	
	<div class="search-empty">
		<div class="headline">
			<spring:theme code="search.no.results" arguments="${searchPageData.freeTextSearch}"/> 
		</div>
		<%--<div class="noproduct-link">--%>
			<%--Sorry, we didnt find any products that match your search. If you have not ordered the product before but are interested in learning more, <span class="prolink"><a href="">contact us</a></span>.--%>
			<%--If you have ordered the product before, our site may need a quick tune-up. <span class="prolink"><a href="">Let us know</a></span>. We will fix the problem as soon as possible.--%>
			<%--Thank you for your patience.--%>
			<%----%>
		<%--</div>--%>
		<a class="btn btn-default  js-shopping-button" href="${homePageUrl}">
			<spring:theme code="general.continue.shopping" text="Continue Shopping"/>
		</a>
	</div>
	
	<cms:pageSlot position="MiddleContent" var="comp" element="div" class="searchEmptyPageMiddle">
		<cms:component component="${comp}" element="div" class="yComponentWrapper searchEmptyPageMiddle-component"/>
	</cms:pageSlot>

	<cms:pageSlot position="BottomContent" var="comp" element="div" class="searchEmptyPageBottom">
		<cms:component component="${comp}" element="div" class="yComponentWrapper searchEmptyPageBottom-component"/>
	</cms:pageSlot>
	
</template:page>