package co.yedam.prj.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.qna.service.QnaService;
import co.yedam.prj.qna.vo.QnaReplyVO;
import co.yedam.prj.qna.vo.QnaVO;

@Repository("QnaDao")
public class QnaServiceImpl implements QnaService {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 게시글 Size 구할 때 필요
	@Override
	public List<QnaVO> qnaSelectList() {
		
		return sqlSession.selectList("qnaList");
	}

	// Paging
	@Override
	public List<QnaVO> qnaSelectListPaging(QnaVO vo) {
		
		return sqlSession.selectList("qnaListPaging", vo);
	}

	// 게시글 전체 수 Count
	@Override
	public int tableCnt() {
		
		return sqlSession.selectOne("TableCnt");
	}

	// 작성한 게시글로 이동
	@Override
	public QnaVO qnaSelect(QnaVO vo) {
		
		return sqlSession.selectOne("qnaSelect", vo);
	}

	// 게시글 작성
	@Override
	public int insertQna(QnaVO vo) {
		
		return sqlSession.insert("qnaInsert", vo);
	}

	// 게시글 삭제
	@Override
	public int deleteQna(QnaVO vo) {
		
		return sqlSession.delete("qnaDelete", vo);
	}

	// 게시글 수정
	@Override
	public int updateQna(QnaVO vo) {
		
		return sqlSession.update("qnaUpdate", vo);
	}

	// 게시글 조회수
	@Override
	public int hitCount(QnaVO vo) {
		
		return sqlSession.update("qnaHit", vo);
	}

	// 댓글 리스트 조회
	@Override
	public List<QnaReplyVO> replyList(QnaReplyVO vo) {
		
		return sqlSession.selectList("qnaReplyList", vo);
	}

	// 댓글 입력
	@Override
	public int insertQnaReply(QnaReplyVO vo) {
		
		return sqlSession.insert("qnaReplyInsert", vo);
	}

	// 대댓글 입력
	@Override
	public int insertQnaReplyAdd(QnaReplyVO vo) {
		
		return sqlSession.insert("qnaReplyInsertAdd", vo);
	}
	
	
}
