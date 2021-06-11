package co.yedam.prj.revBoard.service;

import java.util.List;

import co.yedam.prj.common.Paging;
import co.yedam.prj.revBoard.vo.RevBoardVO;

public interface RevBoardService {
	
	public List<RevBoardVO> revBoardSelectList();
	public List<RevBoardVO> revBoardSelectListPaging(RevBoardVO vo);
	public int tableCount();
	public RevBoardVO revBoardSelect(RevBoardVO vo);
	public int insertRevBoard(RevBoardVO vo);
	public int deleteRevBoard(RevBoardVO vo);
	public int updateRevBoard(RevBoardVO vo);
	
}
