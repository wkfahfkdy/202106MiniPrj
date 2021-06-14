package co.yedam.prj.qna.vo;

import java.util.Date;

public class QnaVO {
	private int qn_num;			// 게시글 번호
	private String qn_title;	// 게시글 제목
	private String u_id;		// 유저 ID
	private Date qn_regdate;	// 작성일자
	private int qn_hit;			// 게시글 조회수
	private String qn_content;	// 게시글 내용
	
	private int firstRecordIndex;	// Paging 게시판 버튼 index
	private int lastRecordIndex;	// Paging 게시판 버튼 index
	private int totalCnt; // 게시글 전체 수
	
	public int getQn_num() {
		return qn_num;
	}
	public void setQn_num(int qn_num) {
		this.qn_num = qn_num;
	}
	public String getQn_title() {
		return qn_title;
	}
	public void setQn_title(String qn_title) {
		this.qn_title = qn_title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public Date getQn_regdate() {
		return qn_regdate;
	}
	public void setQn_regdate(Date qn_regdate) {
		this.qn_regdate = qn_regdate;
	}
	public int getQn_hit() {
		return qn_hit;
	}
	public void setQn_hit(int qn_hit) {
		this.qn_hit = qn_hit;
	}
	public String getQn_content() {
		return qn_content;
	}
	public void setQn_content(String qn_content) {
		this.qn_content = qn_content;
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
	
	@Override
	public String toString() {
		return "QnaVO [qn_num=" + qn_num + ", qn_title=" + qn_title + ", u_id=" + u_id + ", qn_regdate=" + qn_regdate
				+ ", qn_hit=" + qn_hit + ", qn_content=" + qn_content + ", firstRecordIndex=" + firstRecordIndex
				+ ", lastRecordIndex=" + lastRecordIndex + ", totalCnt=" + totalCnt + "]";
	}
}
