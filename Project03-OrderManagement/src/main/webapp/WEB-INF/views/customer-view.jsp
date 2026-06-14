<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4><i class="bi bi-person me-2"></i>Customer Details</h4>
        <small>View customer information</small>
    </div>
</div>

<div class="page-content">
    <div class="view-card">
        <div class="detail-row">
            <span class="detail-label">ID</span>
            <span class="detail-value">${customer.id}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Name</span>
            <span class="detail-value">${customer.name}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Email</span>
            <span class="detail-value">${customer.email}</span>
        </div>
        <div class="detail-row">
            <span class="detail-label">Phone</span>
            <span class="detail-value">${customer.phone}</span>
        </div>

        <div class="d-flex gap-2 mt-4">
            <a href="/customers/edit/${customer.id}" class="btn btn-primary">
                <i class="bi bi-pencil me-1"></i> Edit
            </a>
            <a href="/customers" class="btn btn-outline-secondary">
                <i class="bi bi-arrow-left me-1"></i> Back
            </a>
        </div>
    </div>
</div>

<%@ include file="footer.jsp" %>