<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapperr">
	<div class="container">
		<%@include file="/WEB-INF/views/template/header.jsp"%>
		<div class="page-header">
			<h1>Administrator Page</h1>

			<p class="lead">This is the administrator page</p>
			<h3>
				<a href="<c:url value="/admin/productInventory"/>">Product
					Inventory</a>
			</h3>
			<p>Here you can view, check and verify the product</p>
		</div>
			<%@include file="/WEB-INF/views/template/footer.jsp"%>
	</div>