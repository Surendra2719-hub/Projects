<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Order Management</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        * { box-sizing: border-box; }
        body { margin: 0; background: #f1f5f9; font-family: 'Segoe UI', sans-serif; }

        /* Sidebar */
        .sidebar {
            width: 230px;
            min-height: 100vh;
            background: #1a56db;
            position: fixed;
            top: 0; left: 0;
            display: flex;
            flex-direction: column;
            z-index: 100;
        }
        .sidebar-brand {
            padding: 22px 20px;
            border-bottom: 1px solid rgba(255,255,255,0.15);
        }
        .sidebar-brand h5 {
            color: #fff;
            font-size: 16px;
            font-weight: 600;
            margin: 0;
        }
        .sidebar-brand small {
            color: rgba(255,255,255,0.55);
            font-size: 12px;
        }
        .nav-section-label {
            padding: 18px 18px 6px;
            color: rgba(255,255,255,0.45);
            font-size: 11px;
            letter-spacing: 0.6px;
            text-transform: uppercase;
        }
        .sidebar .nav-link {
            display: flex;
            align-items: center;
            gap: 10px;
            padding: 10px 14px;
            margin: 2px 10px;
            border-radius: 8px;
            color: rgba(255,255,255,0.75);
            font-size: 14px;
            text-decoration: none;
            transition: background 0.15s;
        }
        .sidebar .nav-link:hover { background: rgba(255,255,255,0.12); color: #fff; }
        .sidebar .nav-link.active { background: rgba(255,255,255,0.2); color: #fff; font-weight: 500; }
        .sidebar .nav-link i { font-size: 18px; }

        /* Main */
        .main-wrapper {
            margin-left: 230px;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .topbar {
            background: #fff;
            padding: 15px 28px;
            border-bottom: 1px solid #e2e8f0;
            display: flex;
            align-items: center;
            justify-content: space-between;
            position: sticky;
            top: 0;
            z-index: 99;
        }
        .topbar h4 {
            font-size: 17px;
            font-weight: 600;
            color: #1e293b;
            margin: 0;
        }
        .topbar small {
            color: #94a3b8;
            font-size: 12px;
        }
        .page-content { padding: 24px 28px; }

        /* Cards */
        .stat-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            padding: 18px 20px;
        }
        .stat-card .label {
            font-size: 12px;
            color: #94a3b8;
            margin-bottom: 6px;
            text-transform: uppercase;
            letter-spacing: 0.4px;
        }
        .stat-card .value {
            font-size: 26px;
            font-weight: 600;
            color: #1e293b;
        }

        /* Table */
        .table-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            overflow: hidden;
        }
        .table-card .table {
            margin: 0;
            font-size: 14px;
        }
        .table-card .table thead th {
            background: #f8fafc;
            color: #64748b;
            font-size: 12px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.4px;
            border-bottom: 1px solid #e2e8f0;
            padding: 12px 16px;
        }
        .table-card .table tbody td {
            padding: 12px 16px;
            color: #334155;
            vertical-align: middle;
            border-bottom: 1px solid #f1f5f9;
        }
        .table-card .table tbody tr:last-child td { border-bottom: none; }
        .table-card .table tbody tr:hover { background: #f8fafc; }

        /* Badges */
        .badge-pending   { background: #fef3c7; color: #92400e; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 500; }
        .badge-confirmed { background: #dbeafe; color: #1e40af; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 500; }
        .badge-delivered { background: #d1fae5; color: #065f46; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 500; }
        .badge-cancelled { background: #fee2e2; color: #991b1b; padding: 4px 10px; border-radius: 20px; font-size: 12px; font-weight: 500; }

        /* Form */
        .form-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            padding: 28px;
            max-width: 560px;
        }
        .form-label { font-size: 13px; font-weight: 500; color: #475569; }
        .form-control, .form-select {
            font-size: 14px;
            border: 1px solid #e2e8f0;
            border-radius: 8px;
            padding: 9px 14px;
            color: #1e293b;
        }
        .form-control:focus, .form-select:focus {
            border-color: #1a56db;
            box-shadow: 0 0 0 3px rgba(26,86,219,0.1);
        }

        /* Buttons */
        .btn-primary {
            background: #1a56db !important;
            border-color: #1a56db !important;
            font-size: 14px;
            padding: 8px 18px;
            border-radius: 8px;
        }
        .btn-primary:hover { background: #1648c0 !important; }
        .btn-sm { padding: 4px 10px !important; font-size: 12px !important; border-radius: 6px !important; }

        /* View card */
        .view-card {
            background: #fff;
            border: 1px solid #e2e8f0;
            border-radius: 12px;
            padding: 28px;
            max-width: 560px;
        }
        .view-card .detail-row {
            display: flex;
            justify-content: space-between;
            padding: 12px 0;
            border-bottom: 1px solid #f1f5f9;
            font-size: 14px;
        }
        .view-card .detail-row:last-child { border-bottom: none; }
        .view-card .detail-label { color: #94a3b8; font-weight: 500; }
        .view-card .detail-value { color: #1e293b; font-weight: 500; }
    </style>
</head>
<body>

<!-- Sidebar -->
<div class="sidebar">
    <div class="sidebar-brand">
        <h5><i class="bi bi-box-seam me-2"></i>OrderPanel</h5>
        <small>Admin Dashboard</small>
    </div>
    <div class="nav-section-label">Main Menu</div>
    <a href="/customers" class="nav-link">
        <i class="bi bi-people"></i> Customers
    </a>
    <a href="/products" class="nav-link">
        <i class="bi bi-box"></i> Products
    </a>
    <a href="/orders" class="nav-link">
        <i class="bi bi-cart"></i> Orders
    </a>
</div>

<!-- Main Wrapper -->
<div class="main-wrapper">