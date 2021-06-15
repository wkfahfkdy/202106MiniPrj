package co.yedam.prj.revBoard.service;

import java.util.List;

import co.yedam.prj.revBoard.vo.revBoardVO2;


public interface revBoardService2 {
	
	public List<revBoardVO2> revBoardSelectList();

	public int insertRevBoard(revBoardVO2 vo);
	
	public int reviewLike(revBoardVO2 vo);
	
}
