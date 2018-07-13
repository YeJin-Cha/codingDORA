package kr.block.codingdora.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.block.codingdora.mapper.DonationMapper;
import kr.block.codingdora.vo.DonationVO;

@Repository
public class DonationDAO {

	@Autowired
	SqlSession sqlSession;
	
	public ArrayList<DonationVO> selectAll() {
		DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
		System.out.println(mapper.selectAll().toString());
		return mapper.selectAll();
	}
	
	//DonationVo 등록
			public void insertPost(DonationVO vo){
				DonationMapper mapper = sqlSession.getMapper(DonationMapper.class);
				try{
					mapper.insertPost(vo);
				}catch(Exception e){
					e.printStackTrace();
				}
			}
}
