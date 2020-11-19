/*
package com.customercrud.customerfeedback.resources;

import com.customercrud.customerfeedback.entity.Customer;
import com.customercrud.customerfeedback.services.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/api")
public class CustomerResource {
    @Autowired
    CustomerService customerService;

    @RequestMapping(method = RequestMethod.GET)
    public String index(Model model) {
        model.addAttribute("customerList", customerService.getAllCustomer());
        return "index";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String add() {
        return "add";
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public String delete(@PathVariable("id") int id) {
        customerService.deleteCustomer(id);
        return "redirect:/api";
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public String save(@ModelAttribute Customer customer) {
        customerService.addCustomer(customer);
        return "redirect:/api";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String edit(@PathVariable("id") int id, Model model) {
        Customer customer = customerService.findById(id);
        model.addAttribute("Customer", customer);
        return "update";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String update(@ModelAttribute Customer customer) {
        customerService.updateCustomer(customer);
        return "redirect:/api";
    }

*/
/*
-------------------------------for json output--------------------------------------------
*//*


    @GetMapping("/customers")
    public ResponseEntity<List<Customer>> getAllCustomer() {
        final List<Customer> customers = customerService.getAllCustomer();
        return ResponseEntity.ok().body(customers);
    }

    @GetMapping("/customers/{id}")
    public ResponseEntity<Customer> getCustomerById(@PathVariable("id") Integer id) {
        final Customer customer = customerService.findById(id);
        return ResponseEntity.ok().body(customer);
    }
}
*/
