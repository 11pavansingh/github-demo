<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container-wrapperr">
	<div class="container">
		<%@include file="/WEB-INF/views/template/header.jsp"%>
		<div class="page-header">
			<h1>Add Product</h1>
			<p class="lead">Fill the below information to add the product</p>
		</div>

		<form:form
			action="${pageContext.request.contextPath}/admin/productInventory/addProduct"
			method="post" commandName="product" enctype="multipart/form-data">
			<div class="form-group">
				<lable for="name">Name</lable>
				<form:input path="productName" id="name" class="form-control" />
			</div>

			<div class="form-group">
				<label for="category">Category</label>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productCategory" id="category" value="instrument" />Instrument</lable>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productCategory" id="category" value="record" />Record</lable>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productCategory" id="category" value="accessory" />Accessory</lable>
			</div>
			<div class="form-group">
				<lable for="description">Description</lable>
				<form:textarea path="productDescription" id="description"
					class="form-control" />
			</div>
			<div class="form-group">
				<lable for="price">Price</lable>
				<form:input path="productPrice" id="price" class="form-control" />
			</div>
			<div class="form-group">
				<label for="condition">Condition</label>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productCondition" id="condition" value="new" />New</lable>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productCondition" id="condition" value="used" />Used</lable>
			</div>

			<div class="form-group">
				<label for="status">Status</label>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productStatus" id="status" value="active" />Active</lable>
				<lable class="checkbox-inline"> <form:radiobutton
					path="productStatus" id="status" value="inactive" />In-Active</lable>
			</div>
			<div class="form-group">
				<lable for="unitInStock">Unti In Stock</lable>
				<form:input path="unitInStock" id="unitInStock" class="form-control" />
			</div>

			<div class="form-group">
				<lable for="manufacturer">Manufacturer</lable>
				<form:input path="productManufactures" id="manufacturer"
					class="form-control" />
			</div>

			<div class="form-group">
				<lable class="control-lable" for="productImage"> Upload
				Picture</lable>
				<form:input id="productImage" path = "productImage" type="file"
					class="form:input-large" />
			</div>
			<br>
			<br>
			<input type="submit" value="submit" class="btn btn-default">
			<a href="<c:url value="/admin/productInventory"/>"
				class="btn btn-default">Cancel</a>
		</form:form>

		<%@include file="/WEB-INF/views/template/footer.jsp"%>
	</div>
</div>







