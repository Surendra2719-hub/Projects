<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4>
            <i class="bi bi-cart-plus me-2"></i>
            <c:choose>
                <c:when test="${order.id != null}">Edit Order</c:when>
                <c:otherwise>Place Order</c:otherwise>
            </c:choose>
        </h4>
        <small>Fill in the details below</small>
    </div>
</div>

<div class="page-content">
    <div class="form-card">

        <c:if test="${not empty stockError}">
            <div class="alert alert-danger mb-3">
                <i class="bi bi-exclamation-triangle me-2"></i>${stockError}
            </div>
        </c:if>

        <form action="${order.id != null ? '/orders/update/'.concat(order.id) : '/orders/save'}" method="post">

            <div class="mb-3">
                <label class="form-label">Customer</label>
                <select name="customer.id" class="form-select" required>
                    <option value="">-- Select Customer --</option>
                    <c:forEach var="customer" items="${customers}">
                        <option value="${customer.id}">${customer.name}</option>
                    </c:forEach>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Product</label>
                <select name="product.id" class="form-select" required>
                    <option value="">-- Select Product --</option>
                    <c:forEach var="product" items="${products}">
                        <option value="${product.id}">${product.name} (&#8377;${product.price})</option>
                    </c:forEach>
                </select>
            </div>

            <div class="mb-3">
                <label class="form-label">Quantity</label>
                <input type="number" name="quantity" value="${order.quantity}"
                       class="form-control" placeholder="Enter quantity" min="1" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Status</label>
                <select name="status" class="form-select">
                    <option value="PENDING">PENDING</option>
                    <option value="CONFIRMED">CONFIRMED</option>
                    <option value="DELIVERED">DELIVERED</option>
                    <option value="CANCELLED">CANCELLED</option>
                </select>
            </div>

            <div class="d-flex gap-2 mt-4">
                <button type="submit" class="btn btn-primary">
                    <i class="bi bi-save me-1"></i> Save
                </button>
                <a href="/orders" class="btn btn-outline-secondary">
                    <i class="bi bi-arrow-left me-1"></i> Cancel
                </a>
            </div>

        </form>
    </div>
</div>

<%@ include file="footer.jsp" %>