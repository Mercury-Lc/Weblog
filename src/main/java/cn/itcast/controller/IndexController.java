package cn.itcast.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.itcast.service.AvgPvService;


@Controller
public class IndexController {

	@Autowired
	private AvgPvService pvService;

	


}
