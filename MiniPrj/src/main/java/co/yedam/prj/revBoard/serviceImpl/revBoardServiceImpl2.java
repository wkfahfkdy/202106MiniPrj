package co.yedam.prj.revBoard.serviceImpl;

import java.util.List;




import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.revBoard.service.revBoardService2;
import co.yedam.prj.revBoard.vo.RevCommentVO;
import co.yedam.prj.revBoard.vo.revBoardVO2;

@Repository("revBoardDao2")
public class revBoardServiceImpl2 implements revBoardService2{

	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<revBoardVO2> revBoardSelectList() {
		
		return sqlSession.selectList("revBoardList2");
	}

	@Override
	public int insertRevBoard(revBoardVO2 vo) {
		
		return sqlSession.insert("revBoardInsert2",vo);
	}

	@Override
	public int reviewLike(revBoardVO2 vo) {
		
		
		return sqlSession.update("revBoardLikeUp",vo);
	}
	
	@Override
	public List<revBoardVO2> reviewLikeTop(){
		
		return sqlSession.selectList("revTopSelect");
	}
	
	@Override
	public revBoardVO2 revClickSelect(revBoardVO2 vo) {
		return sqlSession.selectOne("revClickSelect",vo);
	}
	
	
	@Override
	public int revBoardHit(revBoardVO2 vo) {
		
		return sqlSession.update("revBoardHit",vo);
	}

	@Override
	public int revBoardCount(revBoardVO2 vo) {
	
		return sqlSession.selectOne("revBoardCount",vo);
	}

	@Override
	public int insertRevComment(RevCommentVO vo) {
		
		return sqlSession.insert("revCommentInsert",vo);
	}

	
	@Override
	public  List<RevCommentVO> revCommentList(RevCommentVO vo) {
		
		return  sqlSession.selectList("revCommentList",vo);
	}

	

	@Override
	public int deleteReview(revBoardVO2 vo) {
		
		return sqlSession.delete("deleteReview",vo);
	}

	@Override
	public int UpdateReview(revBoardVO2 vo) {
	
		return sqlSession.update("updateReview",vo);
	}

	@Override
	public int reviewCount(RevCommentVO vo) {
	
		return sqlSession.selectOne("reviewCount",vo);
	}

	@Override
	public int revCount(revBoardVO2 vo) {

		return sqlSession.selectOne("revCount", vo);
	}
	
	

}	
