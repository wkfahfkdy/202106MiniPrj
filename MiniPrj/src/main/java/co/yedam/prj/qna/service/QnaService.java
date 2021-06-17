package co.yedam.prj.qna.service;

import java.util.List;

import co.yedam.prj.qna.vo.QnaReplyVO;
import co.yedam.prj.qna.vo.QnaVO;


public interface QnaService {
	
	public List<QnaVO> qnaSelectList();
	public List<QnaVO> qnaSelectListPaging(QnaVO vo);
	public int qnaCount(QnaVO vo);
	public int tableCnt();
	public QnaVO qnaSelect(QnaVO vo);
	public int insertQna(QnaVO vo);
	public int deleteQna(QnaVO vo);
	public int updateQna(QnaVO vo);
	public int hitCount(QnaVO vo);
	public List<QnaReplyVO> replyList(QnaReplyVO vo);
	public int insertQnaReply(QnaReplyVO vo);
	public int insertQnaReplyAdd(QnaReplyVO vo);

}
