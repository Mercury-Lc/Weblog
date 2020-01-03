package cn.itcast.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mongodb.DBCollection;

import cn.itcast.pojo.User;
import cn.itcast.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userServiceImpl;
	@Autowired
    private MongoTemplate mt; 
	@RequestMapping("/login")
	public String login(@RequestBody User u) {
		User user = userServiceImpl.loginUser(u);
		System.out.println(user.get_id());
        return "index";
	}
	
	@RequestMapping("/addUser")
	public void addUser(@RequestBody User u) {
		userServiceImpl.addUser(u);
	}
	
	@RequestMapping("/updateUser")
	public void updateUser(@RequestBody User u) {
		userServiceImpl.updateUser(u);
	}
}
