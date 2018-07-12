package kr.block.codingdora.mapper;

import java.util.ArrayList;

import kr.block.codingdora.vo.DonationVO;
import kr.block.codingdora.vo.UserVO;

public interface UserMapper {
	public void insertUser(UserVO userVO);

	public UserVO selectUser(String username);

	public ArrayList<DonationVO> selectDonation();
}
