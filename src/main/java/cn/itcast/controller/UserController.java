package cn.itcast.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import cn.itcast.pojo.User;
import cn.itcast.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userServiceImpl;
	@RequestMapping(value = "/login", method=RequestMethod.POST)
	@ResponseBody
	public Integer login(@RequestBody User u,HttpSession session) {
		User user = userServiceImpl.loginUser(u);
		if(user!=null) {
			session.setAttribute("USER_SESSION", user);
			if(user.get_id().equals("admin")) {
				return 1;
			}
			return 2;
		}else {
			return 0;
		}
	}
	
	@RequestMapping(value = "/addUser", method=RequestMethod.POST)
	@ResponseBody
	public void addUser(@RequestBody User u) {
		System.out.println("!");
		userServiceImpl.signUp(u);
	}
	
	@RequestMapping(value = "/updateUser", method=RequestMethod.POST)
	@ResponseBody
	public void updateUser(@RequestBody User u) {
		userServiceImpl.updateUser(u);
	}
	
	@RequestMapping(value = "/getUser")
	@ResponseBody
	public User getUser(HttpSession session) {
		 User user = (User) session.getAttribute("USER_SESSION");
		 return user;
	 }
}
