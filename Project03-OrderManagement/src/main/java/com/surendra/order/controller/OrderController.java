package com.surendra.order.controller;

import com.surendra.order.entity.Order;
import com.surendra.order.service.CustomerService;
import com.surendra.order.service.OrderService;
import com.surendra.order.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/orders")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ProductService productService;

	// Show all orders
	@GetMapping
	public String getAllOrders(Model model) {
		model.addAttribute("orders", orderService.getAllOrders());
		return "order-list";
	}

	// Show add form
	@GetMapping("/new")
	public String showAddForm(Model model) {
		model.addAttribute("order", new Order());
		model.addAttribute("customers", customerService.getAllCustomers());
		model.addAttribute("products", productService.getAllProducts());
		return "order-form";
	}

	// Save order
	@PostMapping("/save")
	public String saveOrder(@ModelAttribute Order order, RedirectAttributes redirectAttributes, Model model) {
		try {
			orderService.saveOrder(order);
			return "redirect:/orders";
		} catch (RuntimeException e) {
			return "redirect:/orders/new?error=" + e.getMessage();
		}
	}

	// Show edit form
	@GetMapping("/edit/{id}")
	public String showEditForm(@PathVariable Long id, Model model) {
		model.addAttribute("order", orderService.getOrderById(id));
		model.addAttribute("customers", customerService.getAllCustomers());
		model.addAttribute("products", productService.getAllProducts());
		return "order-form";
	}

	// Update order
	@PostMapping("/update/{id}")
	public String updateOrder(@PathVariable Long id, @ModelAttribute Order order) {
		orderService.updateOrder(id, order);
		return "redirect:/orders";
	}

	// Delete order
	@GetMapping("/delete/{id}")
	public String deleteOrder(@PathVariable Long id) {
		orderService.deleteOrder(id);
		return "redirect:/orders";
	}

	// View single order
	@GetMapping("/view/{id}")
	public String viewOrder(@PathVariable Long id, Model model) {
		model.addAttribute("order", orderService.getOrderById(id));
		return "order-view";
	}
}