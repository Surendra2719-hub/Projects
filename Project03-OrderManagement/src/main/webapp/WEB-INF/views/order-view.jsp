<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4><i class="bi bi-cart-check me-2"></i>Order Details</h4>
        <small>View order information</small>
    </div>
</div>

<div class="page-content">
    <div class="view-card">
        <div class="detail-row">
            <span class="detail-label">Order ID</span>
            <span class="detail-value">#${order.id}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Customer</span>
            <span class="detail-value">${order.customer.name}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Product</span>
            <span class="detail-value">${order.product.name}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Quantity</span>
            <span class="detail-value">${order.quantity}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Status</span>
            <span class="detail-value">
                <c:choose>
                    <c:when test="${order.status == 'PENDING'}">
                        <span class="badge-pending">${order.status}</span>
                    </c:when>
                    <c:when test="${order.status == 'CONFIRMED'}">
                        <span class="badge-confirmed">${order.status}</span>
                    </c:when>
                    <c:when test="${order.status == 'DELIVERED'}">
                        <span class="badge-delivered">${order.status}</span>
                    </c:when>
                    <c:when test="${order.status == 'CANCELLED'}">
                        <span class="badge-cancelled">${order.status}</span>
                    </c:when>
                </c:choose>
            </span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Order Date</span>
            <span class="detail-value">${order.orderDate}</span>
        </div>

        <div class="d-flex gap-2 mt-4">
            <a href="/orders/edit/${order.id}" class="btn btn-primary">
                <i class="bi bi-pencil me-1"></i> Edit
            </a>
            <a href="/orders" class="btn btn-outline-secondary">
                <i class="bi bi-arrow-left me-1"></i> Back
            </a>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>