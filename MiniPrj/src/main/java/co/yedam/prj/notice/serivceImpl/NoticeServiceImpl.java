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
	
	@Override
	public List<NoticeVO> noticeSelectList() {
		
		return sqlSession.selectList("noticeList");
	}

	@Override
	public List<NoticeVO> noticeSelectListPaging(NoticeVO vo) {
		
		return sqlSession.selectList("noitceListPaging", vo);
	}

	@Override
	public int tableCount() {
		
		return sqlSession.selectOne("TableCount");
	}

	@Override
	public NoticeVO noticeSelect(NoticeVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertnotice(NoticeVO vo) {
		
		return sqlSession.insert("noticeInsert", vo);
	}

	@Override
	public int deletenotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatenotice(NoticeVO vo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
