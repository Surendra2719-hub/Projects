<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4><i class="bi bi-cart me-2"></i>Orders</h4>
        <small>Manage all orders</small>
    </div>
    <a href="/orders/new" class="btn btn-primary">
        <i class="bi bi-plus-lg me-1"></i> Place Order
    </a>
</div>

<div class="page-content">
    <div class="table-card">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Customer</th>
                    <th>Product</th>
                    <th>Qty</th>
                    <th>Status</th>
                    <th>Order Date</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="order" items="${orders}">
                    <tr>
                        <td>${order.id}</td>
                        <td>${order.customer.name}</td>
                        <td>${order.product.name}</td>
                        <td>${order.quantity}</td>
                        <td>
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
                        </td>
                        <td>${order.orderDate}</td>
                        <td>
                            <a href="/orders/view/${order.id}" class="btn btn-sm btn-outline-info me-1">
                                <i class="bi bi-eye"></i>
                            </a>
                            <a href="/orders/edit/${order.id}" class="btn btn-sm btn-outline-warning me-1">
                                <i class="bi bi-pencil"></i>
                            </a>
                            <a href="/orders/delete/${order.id}" class="btn btn-sm btn-outline-danger"
                               onclick="return confirm('Cancel this order?')">
                                <i class="bi bi-trash"></i>
                            </a>
                        </td>
                    </tr>
                </c:forEach>
                <c:if test="${empty orders}">
                    <tr>
                        <td colspan="7" class="text-center text-muted py-4">
                            <i class="bi bi-inbox fs-4 d-block mb-2"></i>
                            No orders found
                        </td>
                    </tr>
                </c:if>
            </tbody>
        </table>
    </div>
</div>

<%@ include file="footer.jsp" %>