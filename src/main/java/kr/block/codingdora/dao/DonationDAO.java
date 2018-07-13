package kr.block.codingdora.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.block.codingdora.mapper.DonationMapper;
import kr.block.codingdora.vo.D_commVO;
import kr.block.codingdora.vo.DonationVO;

@Repository
public class DonationDAO {

	@Autowired
	SqlSession sqlSession;

	public ArrayList<DonationVO> selectAll() {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		return mapper.selectAll();
	}

	// DonationVo 등록
	public void insertPost(DonationVO vo) {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		try {
			mapper.insertPost(vo);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public DonationVO selectPost(int d_num) {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		return mapper.selectPost(d_num);
	}

	public void insertComment(D_commVO commVO) {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		try {
			mapper.insertComment(commVO);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<D_commVO> selectComment(int d_num) {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		
		return mapper.selectComment(d_num);
	}

}
