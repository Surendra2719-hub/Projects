<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="header.jsp" %>

<div class="topbar">
    <div>
        <h4>
            <i class="bi bi-person-plus me-2"></i>
            <c:choose>
                <c:when test="${customer.id != null}">Edit Customer</c:when>
                <c:otherwise>Add Customer</c:otherwise>
            </c:choose>
        </h4>
        <small>Fill in the details below</small>
    </div>
</div>

<div class="page-content">
    <div class="form-card">
        <form action="${customer.id != null ? '/customers/update/'.concat(customer.id) : '/customers/save'}" method="post">

            <div class="mb-3">
                <label class="form-label">Full Name</label>
                <input type="text" name="name" value="${customer.name}"
                       class="form-control" placeholder="Enter full name" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Email Address</label>
                <input type="email" name="email" value="${customer.email}"
                       class="form-control" placeholder="Enter email" required/>
            </div>

            <div class="mb-3">
                <label class="form-label">Phone Number</label>
                <input type="text" name="phone" value="${customer.phone}"
                       class="form-control" placeholder="Enter phone number" required/>
            </div>

            <div class="d-flex gap-2 mt-4">
                <button type="submit" class="btn btn-primary">
                    <i class="bi bi-save me-1"></i> Save
                </button>
                <a href="/customers" class="btn btn-outline-secondary">
                    <i class="bi bi-arrow-left me-1"></i> Cancel
                </a>
            </div>

        </form>
    </div>
</div>

<%@ include file="footer.jsp" %>