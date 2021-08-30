package service;

import java.util.List;

import vo.PmemberVO;

public interface PmemberService {
	
	
	List<PmemberVO> selectList(); //selectList()
	PmemberVO selectOne(PmemberVO vo); //selectOne
	int insert(PmemberVO vo); //insert
	int update(PmemberVO vo); //update
	int delete(PmemberVO vo); //delete

} //MemberService