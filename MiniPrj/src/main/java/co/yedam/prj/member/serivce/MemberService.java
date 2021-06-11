package co.yedam.prj.member.serivce;

import java.util.List;

import co.yedam.prj.member.vo.MemberVO;

public interface MemberService {
	
	public int memberIdCheck(MemberVO vo);
	public List<MemberVO> memberSelectList();
	public List<MemberVO> memberSelectListWait();
	public List<MemberVO> memberSelectListBM();
	public List<MemberVO> memberSelectListM();
	public int memberSelect(MemberVO vo);
	public int insertMember(MemberVO vo);
	public int insertCeo(MemberVO vo);
	public int deleteMember(MemberVO vo);
	public int updateMember(MemberVO vo);
	public int mileAgeUp(MemberVO vo);
	public int mileAgeDown(MemberVO vo);
	
}
