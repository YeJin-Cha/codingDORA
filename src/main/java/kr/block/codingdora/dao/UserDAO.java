package kr.block.codingdora.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.block.codingdora.mapper.UserMapper;
import kr.block.codingdora.vo.UserVO;

@Repository
public class UserDAO {

	@Autowired
	SqlSession sqlSession;
	
	public void insertUser(UserVO userVO){
		UserMapper usersMapper = sqlSession.getMapper(UserMapper.class);
		try{
			usersMapper.insertUser(userVO);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public UserVO selectUser(String username) {
		UserMapper mapper = sqlSession.getMapper(UserMapper.class);
		return mapper.selectUser(username);
	}
}
