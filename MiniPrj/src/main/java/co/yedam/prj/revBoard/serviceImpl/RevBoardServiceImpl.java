package co.yedam.prj.revBoard.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.common.Paging;
import co.yedam.prj.revBoard.service.RevBoardService;
import co.yedam.prj.revBoard.vo.RevBoardVO;

@Repository("revBoardDao")
public class RevBoardServiceImpl implements RevBoardService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<RevBoardVO> revBoardSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("revBoardList");
	}

	@Override
	public List<RevBoardVO> revBoardSelectListPaging(RevBoardVO vo) {
		
		return sqlSession.selectList("revBoardListPaging");
	}

	@Override
	public RevBoardVO revBoardSelect(RevBoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertRevBoard(RevBoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteRevBoard(RevBoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRevBoard(RevBoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tableCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("testTableCount");
	}

}
