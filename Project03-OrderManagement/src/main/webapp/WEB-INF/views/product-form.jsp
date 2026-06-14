<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4>
            <i class="bi bi-box-seam me-2"></i>
            <c:choose>
                <c:when test="${product.id != null}">Edit Product</c:when>
                <c:otherwise>Add Product</c:otherwise>
            </c:choose>
        </h4>
        <small>Fill in the details below</small>
    </div>
</div>

<div class="page-content">
    <div class="form-card">
        <form action="${product.id != null ? '/products/update/'.concat(product.id) : '/products/save'}" method="post">

            <div class="mb-3">
                <label class="form-label">Product Name</label>
                <input type="text" name="name" value="${product.name}"
                       class="form-control" placeholder="Enter product name" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Price (&#8377;)</label>
                <input type="number" step="0.01" name="price" value="${product.price}"
                       class="form-control" placeholder="Enter price" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Stock Quantity</label>
                <input type="number" name="stock" value="${product.stock}"
                       class="form-control" placeholder="Enter stock" required/>
            </div>

            <div class="d-flex gap-2 mt-4">
                <button type="submit" class="btn btn-primary">
                    <i class="bi bi-save me-1"></i> Save
                </button>
                <a href="/products" class="btn btn-outline-secondary">
                    <i class="bi bi-arrow-left me-1"></i> Cancel
                </a>
            </div>

        </form>
    </div>
</div>

<%@ include file="footer.jsp" %>