package kr.block.codingdora;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
/*	@Autowired
	DonationDAO donationDAO;
	*/
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		ArrayList<DonationVO> donationList;
//		
//		donationList = donationDAO.selectAll();
		
		
		return "home";
	}

	@RequestMapping(value = "signUp" , method = RequestMethod.GET)
	public String signUp(){
		return "signUp";
	}
	
}
