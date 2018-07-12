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
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		try{
			userMapper.insertUser(userVO);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	public UserVO selectUser(String userid){
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		UserVO userVO = null;
		try{
			userVO = userMapper.selectUser(userid);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return userVO;
	}
	public void permitUser(UserVO userVO){
		UserMapper userMapper = sqlSession.getMapper(UserMapper.class);
		try{
			userMapper.permitUser(userVO);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
}
