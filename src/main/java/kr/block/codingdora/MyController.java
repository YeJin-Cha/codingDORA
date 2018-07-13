package kr.block.codingdora;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.block.codingdora.dao.DonationDAO;
import kr.block.codingdora.dao.UserDAO;
import kr.block.codingdora.vo.DonationVO;
import kr.block.codingdora.vo.UserVO;

@Controller
@RequestMapping(value = "my")
public class MyController {
	@Inject
	private JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MyController.class);
	
	@Autowired
	UserDAO userDAO;
//	dsadsadsad
	@Autowired
	DonationDAO donationDAO;
	
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
	public String logout(HttpSession session){
		logger.info("logout");
		session.removeAttribute("userId");
		session.invalidate();
		
		return "redirect:../";
	}
		
	@RequestMapping(value = "newPost", method = RequestMethod.GET)
	public String newPost(){
		logger.info("new Post");
		return "newPost";
	}
	
	@RequestMapping(value = "testDetails", method = RequestMethod.GET)
	public String testDetails(){
		logger.info("testDetails");
		
		
		return "testDetails";
	}

	@RequestMapping(value = "/insertUser", method = RequestMethod.POST)
	public String insertUser(UserVO userVO, String userid) throws MessagingException, UnsupportedEncodingException {
		userDAO.insertUser(userVO);
		System.out.println(userVO.getUseremail());
		String title = "GURUME365 ";
		MailHandler sendMail = new MailHandler(mailSender);
		sendMail.setSubject(title);
		sendMail.setText(new StringBuffer().append("<h1>메일 인증</h1>")
				.append("<a href='http://localhost:8888/codingdora/my/permit?userid="+userid)
				.append("' target='_blank'>이메일 인증 확인</a>").toString());
		sendMail.setFrom("gurume365", title);
		sendMail.setTo(userVO.getUseremail());
		sendMail.send();
		return "home";
	}

	
	@RequestMapping(value = "/permitUser", method = RequestMethod.GET)
	public String permitUser(String userid) {
		System.out.println("userid: "+userid);
		UserVO userVO = userDAO.selectUser(userid);
		System.out.println(userVO);
		if(userVO.getUserpermit().equals("N")&&userVO != null){
			userDAO.permitUser(userVO);
		}
		return "home";
	}

	
	@ResponseBody
	@RequestMapping(value = "/selectUser", method=RequestMethod.POST)
	public String selectUser(HttpSession session, Model model, String username, String password){
		//System.out.println(username+","+password);
		
		UserVO vo = new UserVO();
		
		if ((String) session.getAttribute("userId") != null) {
			vo = userDAO.selectUser((String) session.getAttribute("userId"));
		} else {
			vo = userDAO.selectUser(username);
		}
		
		if (vo != null) {
			if (password.equals(vo.getUserpw())) {
				if(vo.getUserpermit().equals("N")) return "2";
				session.setAttribute("userId", vo.getUserid());
				session.setAttribute("userName", vo.getUsername());
				return "1";
			}
		}
		
		return "0";
	}
	
	@RequestMapping(value="insertPost" , method=RequestMethod.POST)
	public String insertPost(DonationVO dvo, HttpSession session){
		logger.info("{}",dvo);
		
		String userid =(String)session.getAttribute("userId");
		dvo.setUserid(userid);
		
		donationDAO.insertPost(dvo);
		System.out.println("------------");
		
		return "redirect:../";
	}
	
	
	
}
