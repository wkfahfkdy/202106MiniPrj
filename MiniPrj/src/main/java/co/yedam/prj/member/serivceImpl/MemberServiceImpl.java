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
	public List<MemberVO> memberSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("memberList");
	}

	@Override
	public MemberVO memberSelect(MemberVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertMember(MemberVO vo) {
		return 0;
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

}
