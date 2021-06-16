package co.yedam.prj.message.vo;


// 쪽찌기능
public class MessageVO {
	private int ms_num;	// 메세지넘버
	private String title;	// 메세지제목
	private String receiver_name;	// 받는사람
	private String ms_date;	// 날짜
	private String content;	// 내용
	private String sender_name;	// 보낸사람
	private String read_yn;
	private String u_id;
	private String u_name;
	private String s_reg;
	private String s_name;
	
	// Paging VO
	private int firstRecordIndex;	// Paging 게시판 버튼 index
	private int lastRecordIndex;	// Paging 게시판 버튼 index
	private int totalCnt; // 게시글 전체 수
	
	
	public String getRead_yn() {
		return read_yn;
	}
	public void setRead_yn(String read_yn) {
		this.read_yn = read_yn;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getS_reg() {
		return s_reg;
	}
	public void setS_reg(String s_reg) {
		this.s_reg = s_reg;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public int getFirstRecordIndex() {
		return firstRecordIndex;
	}
	public void setFirstRecordIndex(int firstRecordIndex) {
		this.firstRecordIndex = firstRecordIndex;
	}
	public int getLastRecordIndex() {
		return lastRecordIndex;
	}
	public void setLastRecordIndex(int lastRecordIndex) {
		this.lastRecordIndex = lastRecordIndex;
	}
	public int getTotalCnt() {
		return totalCnt;
	}
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getMs_num() {
		return ms_num;
	}
	public void setMs_num(int ms_num) {
		this.ms_num = ms_num;
	}
	public String getReceiver_name() {
		return receiver_name;
	}
	public void setReceiver_name(String receiver_name) {
		this.receiver_name = receiver_name;
	}
	public String getMs_date() {
		return ms_date;
	}
	public void setMs_date(String ms_date) {
		this.ms_date = ms_date;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	
	
}
