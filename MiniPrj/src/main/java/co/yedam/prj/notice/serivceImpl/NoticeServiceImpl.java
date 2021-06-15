package co.yedam.prj.notice.serivceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.notice.service.NoticeService;
import co.yedam.prj.notice.vo.NoticeReplyVO;
import co.yedam.prj.notice.vo.NoticeVO;

@Repository("NoticeDao")
public class NoticeServiceImpl implements NoticeService {
	
	@Autowired
	private SqlSession sqlSession;
	
	// 게시글 Size 구할 때 필요
	@Override
	public List<NoticeVO> noticeSelectList() {
		
		return sqlSession.selectList("noticeList");
	}
	
	// Paging
	@Override
	public List<NoticeVO> noticeSelectListPaging(NoticeVO vo) {
		
		return sqlSession.selectList("noticeListPaging", vo);
	}

	// 게시글 전체 수 Count
	@Override
	public int tableCount() {
		
		return sqlSession.selectOne("TableCount");
	}

	// 작성한 게시글로 이동
	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		
		return sqlSession.selectOne("noticeSelect", vo);
	}

	// 게시글 작성
	@Override
	public int insertNotice(NoticeVO vo) {
		
		return sqlSession.insert("noticeInsert", vo);
	}

	// 게시글 삭제
	@Override
	public int deleteNotice(NoticeVO vo) {
		
		return sqlSession.delete("noticeDelete", vo);
	}

	// 게시글 수정
	@Override
	public int updateNotice(NoticeVO vo) {
		
		return sqlSession.update("noticeUpdate", vo);
	}

	// 게시글 조회수
	@Override
	public int hitcount(NoticeVO vo) {
		
		return sqlSession.update("noticeHit", vo);
	}

	// 댓글 리스트 조회
	@Override
	public List<NoticeReplyVO> replyList(NoticeReplyVO vo) {
		
		return sqlSession.selectList("noticeReplyList", vo);
	}
	
	// 댓글 입력
	@Override
	public int InsertnoticeReply(NoticeReplyVO vo) {
		
		return sqlSession.insert("noticeReplyInsert", vo);
	}

	// 대댓글 입력
	@Override
	public int InsertnoticeReplyAdd(NoticeReplyVO vo) {
		
		return sqlSession.insert("noticeReplyInsertAdd", vo);
	}
	
}
