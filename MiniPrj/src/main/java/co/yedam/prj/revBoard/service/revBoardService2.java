package co.yedam.prj.revBoard.service;

import java.util.List;

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
	
	public int insertRevComment(RevCommentVO vo);
}
