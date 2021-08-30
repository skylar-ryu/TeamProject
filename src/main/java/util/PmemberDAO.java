package util;


import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

// ** DAO (Data Access Object)
// => CRUD

@Repository
public class PmemberDAO {
	
	// ** selectList
		public List<PmemberVO> selectList() {
			return sqlSession.selectList(NS+"selectList");
		} //selectList

	// ** selectOne
	public PmemberVO selectOne(PmemberVO vo) {
		return sqlSession.selectOne(NS+"selectOne", vo);
	} //selectOne

	// ** Join : insert
	public int insert(PmemberVO vo) {
		return sqlSession.insert(NS+"insert", vo);
	} //insert

	// ** update
	// => pkey 일반적으로 수정하지 않음.
	public int update(PmemberVO vo) {
		return sqlSession.update(NS+"update", vo);
		
	} //update

	// ** delete
	public int delete(PmemberVO vo) {
		return sqlSession.delete(NS+"delete",vo);
	} //delete
	
} //class
