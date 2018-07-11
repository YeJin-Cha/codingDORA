package kr.block.codingdora;

import java.io.UnsupportedEncodingException;

import javax.inject.Inject;
import javax.mail.MessagingException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.block.codingdora.dao.UserDAO;
import kr.block.codingdora.vo.UserVO;

@Controller
@RequestMapping(value = "my")
public class MyController {
	@Inject
	private JavaMailSender mailSender;
	private static final Logger logger = LoggerFactory.getLogger(MyController.class);
	
	@Autowired
	UserDAO userDAO;
	
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
	@RequestMapping(value = "newPost", method = RequestMethod.GET)
	public String newPost(){
		logger.info("new Post");
		return "newPost";
	}

		@RequestMapping(value="/insertUser",method=RequestMethod.POST)
	   public String insertUser(UserVO userVO) throws MessagingException, UnsupportedEncodingException{
	      userDAO.insertUser(userVO);
	      System.out.println(userVO.getUseremail());
	      String title = "GURUME365 ";
	      MailHandler sendMail = new MailHandler(mailSender);
	      sendMail.setSubject(title);
	      sendMail.setText(new StringBuffer().append("<h1>메일 인증</h1>")
	            .append("<a href='https://localhost:8888/gurume365/join/permit?id='")
	            .append("' target='_blank'>이메일 인증 확인</a>").toString());
	      sendMail.setFrom("gurume365", title);
	      sendMail.setTo(userVO.getUseremail());
	      sendMail.send();
	      return "home";
	}
}
