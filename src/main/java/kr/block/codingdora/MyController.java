package kr.block.codingdora;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "my")
public class MyController {

	private static final Logger logger = LoggerFactory.getLogger(MyController.class);
	
	@RequestMapping(value = "profile", method = RequestMethod.GET)
	public String profile(){
		logger.info("profile");
		return "contract";
	}
	@RequestMapping(value = "fundingList", method = RequestMethod.GET)
	public String fundingList(){
		logger.info("fundingList");
		return "blog";
	}
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(){
		logger.info("logout");
		return "redirect:../";
	}
}
