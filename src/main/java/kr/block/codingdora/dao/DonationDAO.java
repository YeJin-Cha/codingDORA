//package kr.block.codingdora.dao;
//
//import java.util.ArrayList;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.beans.factory.annotation.Autowired;
//
//import kr.block.codingdora.mapper.UserMapper;
//import kr.block.codingdora.vo.DonationVO;
//import kr.block.codingdora.vo.UserVO;
//
//public class DonationDAO {
//
//	@Autowired
//	SqlSession sqlSession;
//	
//	public void insertUser(UserVO userVO){
//		UserMapper usersMapper = sqlSession.getMapper(UserMapper.class);
//		try{
//			usersMapper.insertUser(userVO);
//		}catch(Exception e){
//			e.printStackTrace();
//		}
//	}
//	
//	public ArrayList<DonationVO> selectAll() {
//		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
//		return mapper.selectDonation();
//	}
//
//}
