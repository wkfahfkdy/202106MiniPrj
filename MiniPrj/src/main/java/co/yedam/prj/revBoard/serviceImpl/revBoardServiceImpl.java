package co.yedam.prj.revBoard.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.common.Paging;
import co.yedam.prj.revBoard.service.revBoardService;
import co.yedam.prj.revBoard.vo.revBoardVO;

@Repository("revBoardDao")
public class revBoardServiceImpl implements revBoardService{

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<revBoardVO> revBoardSelectList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("revBoardList");
	}

	@Override
	public List<revBoardVO> revBoardSelectListPaging(revBoardVO vo) {
		
		return sqlSession.selectList("revBoardListPaging", vo);
	}

	@Override
	public revBoardVO revBoardSelect(revBoardVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertRevBoard(revBoardVO vo) {
		// TODO Auto-generated method stub
		return sqlSession.insert("revBoardInsert", vo);
	}

	@Override
	public int deleteRevBoard(revBoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateRevBoard(revBoardVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int tableCount() {
		// TODO Auto-generated method stub
		return sqlSession.selectOne("testTableCount");
	}

}
