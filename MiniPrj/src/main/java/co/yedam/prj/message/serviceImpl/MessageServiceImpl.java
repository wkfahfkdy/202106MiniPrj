package co.yedam.prj.message.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.message.service.MessageService;
import co.yedam.prj.message.vo.MessageVO;
import co.yedam.prj.notice.vo.NoticeVO;


@Repository("messageDao")
public class MessageServiceImpl implements MessageService {

	@Autowired
	private SqlSession sqlSession;
	
	@Override //전체리스트
	public List<MessageVO> messageSelectList(MessageVO vo) {
		return sqlSession.selectList("messageSelectList", vo);
	}

	@Override //받은메세지
	public List<MessageVO> messageSelectReceiver(MessageVO vo) {
		return sqlSession.selectList("messageSelectReceiver", vo);
	}

	@Override //보낸메세지
	public List<MessageVO> messageSelectSenderList(MessageVO vo) {
		return sqlSession.selectList("messageSelectSenderList", vo);
	}

	@Override // 한건조회
	public MessageVO messageSelect(MessageVO vo) {
		return sqlSession.selectOne("messageSelect", vo);
	}
	
	@Override // 쪽지작성
	public int messageInsert(MessageVO vo) {
		return sqlSession.insert("messageInsert", vo);
	}

	@Override // 쪽지삭제
	public int messageDelete(MessageVO vo) {
		return sqlSession.delete("messageDelete", vo);
	}

	
	// 아래부터 페이징영역
	@Override // 받은쪽지 Paging
	public List<MessageVO> receiverPaging(MessageVO vo) {
		return sqlSession.selectList("receiverPaging", vo);
	}
	
	@Override // 보낸쪽지 Paging
	public List<MessageVO> senderPaging(MessageVO vo) {
		return sqlSession.selectList("senderPaging", vo);
	}

	@Override // 받은쪽지 게시글 전체 수 Count
	public int ReceiverCount() {
		return sqlSession.selectOne("ReceiverCount");
	}

	@Override // 보낸쪽지 게시글 전체 수 Count
	public int SenderCount() {
		return sqlSession.selectOne("SenderCount");
	}
}
