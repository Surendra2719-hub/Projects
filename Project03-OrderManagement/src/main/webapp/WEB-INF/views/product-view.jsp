<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4><i class="bi bi-box me-2"></i>Product Details</h4>
        <small>View product information</small>
    </div>
</div>

<div class="page-content">
    <div class="view-card">
        <div class="detail-row">
            <span class="detail-label">ID</span>
            <span class="detail-value">${product.id}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Name</span>
            <span class="detail-value">${product.name}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Price</span>
            <span class="detail-value">&#8377;${product.price}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Stock</span>
            <span class="detail-value">${product.stock}</span>
        </div>

        <div class="d-flex gap-2 mt-4">
            <a href="/products/edit/${product.id}" class="btn btn-primary">
                <i class="bi bi-pencil me-1"></i> Edit
            </a>
            <a href="/products" class="btn btn-outline-secondary">
                <i class="bi bi-arrow-left me-1"></i> Back
            </a>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>