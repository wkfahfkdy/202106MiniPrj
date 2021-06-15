package co.yedam.prj.message.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.yedam.prj.message.service.MessageService;
import co.yedam.prj.message.vo.MessageVO;


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


}
