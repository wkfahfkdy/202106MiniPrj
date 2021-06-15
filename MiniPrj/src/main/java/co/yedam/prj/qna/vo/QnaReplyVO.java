package co.yedam.prj.qna.vo;

import java.util.Date;

public class QnaReplyVO {

	// Qna 댓글 VO
	private int qnb_num;		// 게시글 번호
	private int qnr_num;		// 댓글 번호
	private int qnr_numch;		// 댓글 자식 번호(계층) - 해당 대댓글이 어느 상위 댓글의 자식인지
	private String qnr_content;	// 댓글 내용
	private int qnr_depth;		// 댓글 깊이(계층) - 댓글 : 0, 대댓글 : 1, 대대댓글 : 2 ...
	private Date qnr_regdate;	// 댓글 작성일자
	private String u_id;
	
	public int getQnb_num() {
		return qnb_num;
	}
	public void setQnb_num(int qnb_num) {
		this.qnb_num = qnb_num;
	}
	public int getQnr_num() {
		return qnr_num;
	}
	public void setQnr_num(int qnr_num) {
		this.qnr_num = qnr_num;
	}
	public int getQnr_numch() {
		return qnr_numch;
	}
	public void setQnr_numch(int qnr_numch) {
		this.qnr_numch = qnr_numch;
	}
	public String getQnr_content() {
		return qnr_content;
	}
	public void setQnr_content(String qnr_content) {
		this.qnr_content = qnr_content;
	}
	public int getQnr_depth() {
		return qnr_depth;
	}
	public void setQnr_depth(int qnr_depth) {
		this.qnr_depth = qnr_depth;
	}
	public Date getQnr_regdate() {
		return qnr_regdate;
	}
	public void setQnr_regdate(Date qnr_regdate) {
		this.qnr_regdate = qnr_regdate;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	@Override
	public String toString() {
		return "QnaReplyVO [qnb_num=" + qnb_num + ", qnr_num=" + qnr_num + ", qnr_numch=" + qnr_numch + ", qnr_content="
				+ qnr_content + ", qnr_depth=" + qnr_depth + ", qnr_regdate=" + qnr_regdate + ", u_id=" + u_id + "]";
	}
	
}
