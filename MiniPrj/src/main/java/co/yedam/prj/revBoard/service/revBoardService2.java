package co.yedam.prj.revBoard.service;

import java.util.List;

import co.yedam.prj.member.vo.MemberVO;
import co.yedam.prj.revBoard.vo.ReCommentVO;
import co.yedam.prj.revBoard.vo.RevCommentVO;
import co.yedam.prj.revBoard.vo.revBoardVO2;


public interface revBoardService2 {
	
	public List<revBoardVO2> revBoardSelectList();

	public int insertRevBoard(revBoardVO2 vo);
	
	public int reviewLike(revBoardVO2 vo);

	public List<revBoardVO2> reviewLikeTop();

	public  revBoardVO2 revClickSelect(revBoardVO2 vo);

	public int revBoardHit(revBoardVO2 vo);
	
	public int revBoardCount(revBoardVO2 vo);
	
	public int revCount(revBoardVO2 vo);
	
	public int insertRevComment(RevCommentVO vo);


	public List<RevCommentVO> revCommentList(RevCommentVO vo);

	public int reviewCount(RevCommentVO vo);
	
	public int deleteReview(revBoardVO2 vo);

	public int UpdateReview(revBoardVO2 vo);

	public int imageUpload1(revBoardVO2 vo);

	public int imageUpload2(revBoardVO2 vo);
	
	public int imageUpload3(revBoardVO2 vo);
	
	public int imageUpload4(revBoardVO2 vo);

	public int imageDel1(revBoardVO2 vo);
	
	public int imageDel2(revBoardVO2 vo);
	
	public int imageDel3(revBoardVO2 vo);
	
	public int imageDel4(revBoardVO2 vo);

	public int reviewLikeUp(revBoardVO2 vo);

	public int commentMileage(MemberVO vo);

	public int delComment(RevCommentVO vo);


	public int commentDefault(RevCommentVO vo4);

	public int commentUpdate(ReCommentVO vo);

	public List<ReCommentVO> recommentList();

}
