package com.surendra.order.service;

import com.surendra.order.entity.Order;
import com.surendra.order.entity.Product;
import com.surendra.order.repository.OrderRepository;
import com.surendra.order.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

    @Autowired
    private OrderRepository orderRepository;

    @Autowired
    private ProductRepository productRepository;  // ← ADD THIS

    @Override
    public Order saveOrder(Order order) {
    	order.setOrderDate(LocalDateTime.now());
        // Stock kam karo
        Product product = productRepository.findById(order.getProduct().getId()).orElse(null);

        if (product != null) {
            if (product.getStock() < order.getQuantity()) {
                throw new RuntimeException("Insufficient stock! Available: " + product.getStock());
            }
            product.setStock(product.getStock() - order.getQuantity());
            productRepository.save(product);
        }

        return orderRepository.save(order);
    }

    
    @Override
    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    @Override
    public Order getOrderById(Long id) {
        return orderRepository.findById(id).orElse(null);
    }

    @Override
    public Order updateOrder(Long id, Order order) {
        order.setId(id);
        return orderRepository.save(order);
    }

    @Override
    public void deleteOrder(Long id) {
        orderRepository.deleteById(id);
    }
}