package kr.block.codingdora;

import java.util.ArrayList;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.block.codingdora.dao.DonationDAO;
import kr.block.codingdora.vo.DonationVO;

@Controller
public class HomeController {
	
	@Autowired
	DonationDAO donationDAO;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		ArrayList<DonationVO> donationList;
		ArrayList<DonationVO> oddPost = new ArrayList<DonationVO>();
		ArrayList<DonationVO> evenPost = new ArrayList<DonationVO>();
		
		donationList = donationDAO.selectAll();
		
		for (int i = 0; i < donationList.size(); i++) {
			System.out.println(i%2);
			if (i%2 != 0) {
				oddPost.add(donationList.get(i));
			} else {
				evenPost.add(donationList.get(i));
			}
		}
		
		System.out.println(oddPost.toString());
		System.out.println(evenPost.toString());
		
		model.addAttribute("donationList", donationList);
		model.addAttribute("oddPost", oddPost);
		model.addAttribute("evenPost", evenPost);
		model.addAttribute("oddSize", oddPost.size());
		model.addAttribute("evenSize", evenPost.size());
		return "home";
	}

	@RequestMapping(value = "signUp" , method = RequestMethod.GET)
	public String signUp(){
		return "signUp";
	}
	
	// 임시 페이지 이동
	@RequestMapping(value = "postdetail" , method = RequestMethod.GET)
	public String postdetail(){
		return "about";
	}
	
}
