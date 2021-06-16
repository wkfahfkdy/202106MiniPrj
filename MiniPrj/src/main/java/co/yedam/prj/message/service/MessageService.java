package co.yedam.prj.message.service;

import java.util.List;

import co.yedam.prj.message.vo.MessageVO;
import oracle.net.ns.Message11;

public interface MessageService {

	public List<MessageVO> messageSelectList(); // 전체메세지
	public List<MessageVO> messageSelectReceiver(); // 받은메세지
	public List<MessageVO> messageSelectSenderList(); // 보낸메세지
	public MessageVO messageSelect(MessageVO vo);	// 한건검색
	
	public int messageInsert(MessageVO vo); // 메세지보내기
	public int messageDelete(MessageVO vo); // 메세지삭제
	public List<MessageVO> storeMsSelect(); // 상점조회
	
	//페이징
	public List<MessageVO> receiverPaging(MessageVO vo);
	public List<MessageVO> senderPaging(MessageVO vo);
	public int ReceiverCount();
	public int SenderCount();
	public List<MessageVO> ReceiverList(MessageVO vo);
	public List<MessageVO> SenderList(MessageVO vo);
	
	
}
