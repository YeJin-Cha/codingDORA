package kr.block.codingdora.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.block.codingdora.mapper.UsersMapper;
import kr.block.codingdora.vo.Users;

@Repository
public class UsersDAO {
	//
	@Autowired
	SqlSession sqlSession;
	
	public void insertUsers(Users users){
		UsersMapper usersMapper = sqlSession.getMapper(UsersMapper.class);
		try{
			usersMapper.insertUsers(users);
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
