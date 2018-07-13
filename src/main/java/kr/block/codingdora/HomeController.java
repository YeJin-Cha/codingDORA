package kr.block.codingdora;

import java.util.ArrayList;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.block.codingdora.dao.DonationDAO;
import kr.block.codingdora.vo.D_commVO;
import kr.block.codingdora.vo.DonationVO;

@Controller
public class HomeController {
	
	@Autowired
	DonationDAO donationDAO;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		ArrayList<DonationVO> donationList;
		donationList = donationDAO.selectAll();
		
		model.addAttribute("donationList", donationList);
		return "home";
	}

	@RequestMapping(value = "signUp" , method = RequestMethod.GET)
	public String signUp(){
		return "signUp";
	}
	
	// 임시 페이지 이동
	@RequestMapping(value = "postdetail" , method = RequestMethod.GET)
	public String postdetail(int d_num, Model model){
		DonationVO readPost;
		ArrayList<D_commVO> readComment;
		
		readPost = donationDAO.selectPost(d_num);
		readComment = donationDAO.selectComment(d_num);
		
		System.out.println(readComment.toString());
		
		model.addAttribute("postNum", d_num);
		model.addAttribute("readPost", readPost);
		model.addAttribute("readComment", readComment);
		return "about";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "writeReply", method = RequestMethod.GET)
	public int writeReply(String reply, int d_num, HttpSession session) {
		D_commVO commVO = new D_commVO();
		
		System.out.println("REPLY: "+ reply);
		System.out.println("D_NUM: "+ d_num);
		
		commVO.setD_num(d_num);
		commVO.setD_comm_text(reply);
		commVO.setUserid((String)session.getAttribute("userId"));
		
		donationDAO.insertComment(commVO);
		
		return d_num;
	}
	
}
