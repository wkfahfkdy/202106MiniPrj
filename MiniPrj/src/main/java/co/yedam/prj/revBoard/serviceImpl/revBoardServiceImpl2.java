package co.yedam.prj.revBoard.serviceImpl;

import java.util.List;




import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.member.vo.MemberVO;
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
	
	

	@Override
	public int imageUpload1(revBoardVO2 vo) {
		
		return sqlSession.update("imageUpload1",vo);
	}
	
	
	@Override
	public int imageUpload2(revBoardVO2 vo) {
		
		return sqlSession.update("imageUpload2",vo);
	}
	@Override
	public int imageUpload3(revBoardVO2 vo) {
		
		return sqlSession.update("imageUpload3",vo);
	}
	@Override
	public int imageUpload4(revBoardVO2 vo) {
		
		return sqlSession.update("imageUpload4",vo);
	}

	
	@Override
	public int imageDel1(revBoardVO2 vo) {
		return sqlSession.update("imageDel1",vo);
	}
	
	@Override
	public int imageDel2(revBoardVO2 vo) {
		return sqlSession.update("imageDel2",vo);
	}
	
	@Override
	public int imageDel3(revBoardVO2 vo) {
		return sqlSession.update("imageDel3",vo);
	}
	
	@Override
	public int imageDel4(revBoardVO2 vo) {
		return sqlSession.update("imageDel4" ,vo);
	}
	
	@Override
	public int reviewLikeUp(revBoardVO2 vo) {
		return sqlSession.update("revBoardLikeUp",vo);
	}
	
	@Override
	public int commentMileage(MemberVO vo) {
		return sqlSession.update("commentMileage",vo);
	}
	
	@Override
	public int delComment(RevCommentVO vo) {
		
		return sqlSession.delete("delComment",vo);
	}
	/*
	@Override
	public int commentDefault(RevCommentVO vo4) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	

	@Override 
	public int commentUpdate(ReCommentVO vo) {
		
		return sqlSession.update("commentUpdate" ,vo);
	}

	
	@Override
	public int commentDefault(RevCommentVO vo4) {
		return sqlSession.insert("commentDefault",vo4);
	}

	
	@Override
	public List<ReCommentVO> recommentList(){
		return sqlSession.selectList("recommentList");
	}
	*/
}	 
