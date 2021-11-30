package com.luv2code.springdemo.controller;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
@Controller
@RequestMapping("/customer")
public class CustomerController {
    @Autowired
   private CustomerService customerService;
    @GetMapping("/list")
    public String listCustomer(Model model)
    {
        List<Customer> result=customerService.getCustomers();
        model.addAttribute("customer",result);
        return "list-customers";
    }
    @GetMapping("/showFormForAdd")
    public String showFormForAdd(Model model)
    {
        Customer theCustomer=new Customer();
        model.addAttribute("customer",theCustomer);

        return "customer-form";
    }
    @PostMapping("/saveCustomer")
    public String saveCustomer(@ModelAttribute("customer") Customer theCustomer)
    {
        System.out.println("In Save Customer Controller");
       customerService.saveCustomer(theCustomer);
        return "redirect:/customer/list";
    }
    @GetMapping("/showFormForUpdate")
    public String showFormForUpdate(@RequestParam("customerId") int id,Model model)
{
    Customer customer=customerService.getCustomer(id);
    model.addAttribute(customer);
    return "customer-form";
}
@GetMapping("/showFormForDelete")
public String showFormForDelete(@RequestParam("customerId") int id,Model model)
{
     customerService.deleteCustomer(id);
  //  model.addAttribute(customer);
    return "redirect:/customer/list";
}

    }
