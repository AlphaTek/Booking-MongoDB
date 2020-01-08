package ca.sheridancollege.controllers;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;


import ca.sheridancollege.beans.Customer;
import ca.sheridancollege.dao.CustomerDAO;


@Controller
@RequestMapping("/user")
public class HomeController {


@Resource(name="customerDAO")
	private CustomerDAO dao;

	// Displaying the initial users list.
		@RequestMapping(value = "/list", method = RequestMethod.GET)
		public String getPersons(Model model) {
			
			List<Customer> user_list = dao.getAll();		
			model.addAttribute("users", user_list);		
			return "displayCustomer";
		}
		// Opening the add new user form page.
		@RequestMapping(value = "/add", method = RequestMethod.GET)
		public String addUser(Model model) {
		
			model.addAttribute("userAttr", new Customer());
			return "addCustomer";
		}

		// Opening the edit user form page.
		@RequestMapping(value = "/edit", method = RequestMethod.GET)
		public String editUser(@RequestParam(value="id", required=true) String id, Model model) {
		
			model.addAttribute("userAttr", dao.findUserId(id));		
			return "addCustomer";
		}

		// Deleting the specified user.
		@RequestMapping(value = "/delete", method = RequestMethod.GET)
		public String delete(@RequestParam(value="id", required=true) String id, Model model) {
			dao.delete(id);
			return "redirect:list";
		}

		// Adding a new user or updating an existing user.
		@RequestMapping(value = "/save", method = RequestMethod.POST)
		public String save(@ModelAttribute("userAttr") Customer customer) {
			if(customer.getId() != null && !customer.getId().trim().equals("")) {
				dao.edit(customer);
			} else {
				dao.add(customer);
			}
			return "redirect:list";
		}
	}