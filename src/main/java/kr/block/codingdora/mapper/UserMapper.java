package kr.block.codingdora.mapper;

import kr.block.codingdora.vo.UserVO;

public interface UserMapper {
	public void insertUser(UserVO userVO);

	public UserVO selectUser(String userid);
	public void permitUser(UserVO userVO);
}
