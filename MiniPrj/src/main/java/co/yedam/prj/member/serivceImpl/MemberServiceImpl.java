package co.yedam.prj.member.serivceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.member.serivce.MemberService;
import co.yedam.prj.member.vo.MemberVO;

@Repository("memberDao")
public class MemberServiceImpl implements MemberService {
	
	
	@Autowired
	private SqlSession sqlSession;
	

	@Override
	public int mileAgeUp(MemberVO vo) {
		return sqlSession.update("mileAgeU",vo);
	}

	@Override
	public int mileAgeDown(MemberVO vo) {
		
		return sqlSession.update("mileAgeD",vo);
	}
	@Override
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("memberList");
	}
	@Override
	public List<MemberVO> memberSelectListWait() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("memberListWait");
	}
	@Override
	public List<MemberVO> memberSelectListBM() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("memberListBM");
	}
	@Override
	public List<MemberVO> memberSelectListM() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("memberListM");
	}

	@Override
	public int memberSelect(MemberVO vo) {
		
		return sqlSession.selectOne("memberSelect", vo);
	}

	@Override
	public int insertMember(MemberVO vo) {
		
		return sqlSession.insert("memberInsert", vo);
	}
	
	@Override
	public int insertCeo(MemberVO vo) {

		return sqlSession.insert("ceoInsert", vo);
	}

	@Override
	public int deleteMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateMember(MemberVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int memberIdCheck(MemberVO vo) {
		
		return sqlSession.selectOne("memberIdCheck", vo);
	}


}
