package com.human.unicorn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.human.unicorn.dto.UserDTO;
import com.human.unicorn.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	UserService userService;
	
//	@RequestMapping("/testList")
//	@ResponseBody
//	public List userList() {
//		List userList = userService.selectUser();
//		System.out.println("userList : " + userList);
//		return userList;
//	}
	
	@RequestMapping("/modifyList")
	public String modifyList(@ModelAttribute UserDTO dto, Model model) {
		
		dto.setUserno(3);
		UserDTO userDTO = userService.selectUser(dto);
		System.out.println("userDTO : " + userDTO);
		model.addAttribute("userDTO", userDTO);
		
		return "modify_User";
	}
	
	@RequestMapping("/modifyUser")
	public String modifyUser(@ModelAttribute UserDTO dto, Model model) {
		
		int result = userService.updateUser(dto);
		System.out.println("modefy ��� : " + dto);
		System.out.println("result ��� : " + result);
		
		
		return "redirect:/modifyList";
		
		
	}
	
}
