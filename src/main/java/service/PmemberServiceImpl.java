package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import util.PmemberDAO;
import vo.PmemberVO;


@Service
public class PmemberServiceImpl implements PmemberService {
	@Autowired
	PmemberDAO dao ;
	
	@Override
	public List<PmemberVO> selectList() {
		return dao.selectList();
	} //selectList()
	@Override
	public PmemberVO selectOne(PmemberVO vo) {
		return dao.selectOne(vo);
	} //selectOne
	
	@Override
	public int insert(PmemberVO vo) {
		return dao.insert(vo);
	} //insert
	@Override
	public int update(PmemberVO vo) {
		return dao.update(vo);
	} //update
	@Override
	public int delete(PmemberVO vo) {
		return dao.delete(vo);
	} //delete
} //class