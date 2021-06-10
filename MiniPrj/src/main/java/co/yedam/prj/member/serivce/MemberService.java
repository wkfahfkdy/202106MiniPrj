package co.yedam.prj.member.serivce;

import java.util.List;

import co.yedam.prj.member.vo.MemberVO;

public interface MemberService {
	
	public List<MemberVO> memberSelectList();
	public MemberVO memberSelect(MemberVO vo);
	public int insertMember(MemberVO vo);
	public int deleteMember(MemberVO vo);
	public int updateMember(MemberVO vo);
	
}
