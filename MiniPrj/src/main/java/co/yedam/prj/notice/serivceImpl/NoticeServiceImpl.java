package co.yedam.prj.notice.serivceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.notice.service.NoticeService;
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
		// TODO Auto-generated method stub
		return null;
	}

	// 게시글 작성
	@Override
	public int insertNotice(NoticeVO vo) {
		
		return sqlSession.insert("noticeInsert", vo);
	}

	// 게시글 삭제
	@Override
	public int deleteNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 게시글 수정
	@Override
	public int updateNotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
