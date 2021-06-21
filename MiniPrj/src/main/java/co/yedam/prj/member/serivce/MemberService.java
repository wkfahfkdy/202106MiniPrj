package co.yedam.prj.member.serivce;

import java.util.List;

import co.yedam.prj.member.vo.MemberVO;

public interface MemberService {
	
	public int memberIdCheck(MemberVO vo);
	
	public List<MemberVO> memberSelectList(MemberVO vo);
	public List<MemberVO> memberSelectListAll();
	public List<MemberVO> memberResearch(MemberVO vo);
	public int tableCnt();
	public int tableCntWait();
	public int tableCntBM();
	public int tableCntM();
	public List<MemberVO> memberSelectListIC(MemberVO vo);
	public List<MemberVO> memberSelectListWait(MemberVO vo);
	public List<MemberVO> memberSelectListBM(MemberVO vo);
	public List<MemberVO> memberSelectListM(MemberVO vo);
	
	public MemberVO memberSelectJW(MemberVO vo);
	public MemberVO memberSelectSID(MemberVO vo);
	
	public int memberSelect(MemberVO vo);
	public int insertMember(MemberVO vo);
	public int insertCeo(MemberVO vo);
	public int deleteMember(MemberVO vo);
	public int sPayUpdate(MemberVO vo);
	public int qnaMileageUp(MemberVO vo);
	public int updateMember(MemberVO vo);
	public int updatePay(MemberVO vo);
	public int revMileageUp(MemberVO vo);
	public int joinWaitUpadte(MemberVO vo);
	public int mileAgeUp(MemberVO vo);
	public int mileAgeDown(MemberVO vo);
	public int mileAgeManualUp(MemberVO vo);
	public int mileAgeManualDown(MemberVO vo);
	
}
