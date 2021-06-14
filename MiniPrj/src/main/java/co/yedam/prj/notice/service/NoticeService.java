package co.yedam.prj.notice.service;

import java.util.List;

import co.yedam.prj.notice.vo.NoticeVO;


public interface NoticeService {
	
	public List<NoticeVO> noticeSelectList();
	public List<NoticeVO> noticeSelectListPaging(NoticeVO vo);
	public int tableCount();
	public NoticeVO noticeSelect(NoticeVO vo);
	public int insertNotice(NoticeVO vo);
	public int deleteNotice(NoticeVO vo);
	public int updateNotice(NoticeVO vo);
	public int hitcount(NoticeVO vo);
}
