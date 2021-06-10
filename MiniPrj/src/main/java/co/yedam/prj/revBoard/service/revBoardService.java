package co.yedam.prj.revBoard.service;

import java.util.List;

import co.yedam.prj.revBoard.vo.revBoardVO;

public interface revBoardService {
	
	public List<revBoardVO> revBoardSelectList();
	public revBoardVO revBoardSelect(revBoardVO vo);
	public int insertRevBoard(revBoardVO vo);
	public int deleteRevBoard(revBoardVO vo);
	public int updateRevBoard(revBoardVO vo);
	
}
