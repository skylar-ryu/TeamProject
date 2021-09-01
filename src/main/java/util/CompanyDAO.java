package util;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import vo.CompanyVO;

@Repository
public class CompanyDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private static final String NS = "one.mapper.CompanyMapper.";
	
	// ** selectList
	public List<CompanyVO> selectList() {
		return sqlSession.selectList(NS+"selectList");
	} //selectList

	// ** selectOne
	public CompanyVO selectOne(CompanyVO vo) {
		return sqlSession.selectOne(NS+"selectOne", vo);
	} //selectOne

	// ** Join : insert
	public int insert(CompanyVO vo) {
		return sqlSession.insert(NS+"insert", vo);
	} //insert

	// ** update
	// => pkey 일반적으로 수정하지 않음.
	public int update(CompanyVO vo) {
		return sqlSession.update(NS+"update", vo);

	} //update

	// ** delete
	public int delete(CompanyVO vo) {
		return sqlSession.delete(NS+"delete",vo);
	} //delete
}
