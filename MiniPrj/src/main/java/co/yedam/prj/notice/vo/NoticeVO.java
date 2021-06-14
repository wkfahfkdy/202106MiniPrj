package co.yedam.prj.notice.vo;

import java.util.Date;

public class NoticeVO {
	
	// Notice 게시글 VO
	private int nt_num;			// 게시글 번호
	private String nt_title;	// 게시글 제목
	private String u_id;		// 유저 ID
	private Date nt_regdate;	// 작성일자
	private int nt_hit;			// 게시글 조회수
	private String nt_content;	// 게시글 내용
	
	// Paging VO
	private int firstRecordIndex;	// Paging 게시판 버튼 index
	private int lastRecordIndex;	// Paging 게시판 버튼 index
	private int totalCnt; // 게시글 전체 수

	
	public int getNt_num() {
		return nt_num;
	}
	public void setNt_num(int nt_num) {
		this.nt_num = nt_num;
	}
	public String getNt_title() {
		return nt_title;
	}
	public void setNt_title(String nt_title) {
		this.nt_title = nt_title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public Date getNt_regdate() {
		return nt_regdate;
	}
	public void setNt_regdate(Date nt_regdate) {
		this.nt_regdate = nt_regdate;
	}
	public int getNt_hit() {
		return nt_hit;
	}
	public void setNt_hit(int nt_hit) {
		this.nt_hit = nt_hit;
	}
	public String getNt_content() {
		return nt_content;
	}
	public void setNt_content(String nt_content) {
		this.nt_content = nt_content;
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
		return "NoticeVO [nt_num=" + nt_num + ", nt_title=" + nt_title + ", u_id=" + u_id + ", nt_regdate=" + nt_regdate
				+ ", nt_hit=" + nt_hit + ", nt_content=" + nt_content + ", firstRecordIndex=" + firstRecordIndex
				+ ", lastRecordIndex=" + lastRecordIndex + ", totalCnt=" + totalCnt + "]";
	}
	
}
