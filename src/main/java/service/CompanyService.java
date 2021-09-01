package service;

import java.util.List;

import vo.CompanyVO;

public interface CompanyService {
	
	List<CompanyVO> selectList(); //selectList()
	CompanyVO selectOne(CompanyVO vo); //selectOne
	int insert(CompanyVO vo); //insert
	int update(CompanyVO vo); //update
	int delete(CompanyVO vo); //delete

}
