package kr.block.codingdora.mapper;

import java.util.ArrayList;

import kr.block.codingdora.vo.D_commVO;
import kr.block.codingdora.vo.DonationVO;

public interface DonationMapper {
	public ArrayList<DonationVO> selectAll();
	public void insertPost(DonationVO vo);
	public DonationVO selectPost(int d_num);
	public ArrayList<D_commVO> selectComment(int d_num);
	public void insertComment(D_commVO commVO);
}
