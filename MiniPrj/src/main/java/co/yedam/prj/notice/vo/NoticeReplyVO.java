package co.yedam.prj.notice.vo;

import java.util.Date;

public class NoticeReplyVO {
	
	// Notice 댓글 VO
	private int ntb_num;		// 게시글 번호
	private int ntr_num;		// 댓글 번호
	private int ntr_numch;		// 댓글 자식 번호(계층) - 해당 대댓글이 어느 상위 댓글의 자식인지
	private String ntr_content;	// 댓글 내용
	private int ntr_depth;		// 댓글 깊이(계층) - 댓글 : 0, 대댓글 : 1, 대대댓글 : 2 ...
	private Date ntr_regdate;	// 댓글 작성일자
	private String u_id;
	
	public int getNtb_num() {
		return ntb_num;
	}
	public void setNtb_num(int ntb_num) {
		this.ntb_num = ntb_num;
	}
	public int getNtr_num() {
		return ntr_num;
	}
	public void setNtr_num(int ntr_num) {
		this.ntr_num = ntr_num;
	}
	public int getNtr_numch() {
		return ntr_numch;
	}
	public void setNtr_numch(int ntr_numch) {
		this.ntr_numch = ntr_numch;
	}
	public String getNtr_content() {
		return ntr_content;
	}
	public void setNtr_content(String ntr_content) {
		this.ntr_content = ntr_content;
	}
	public int getNtr_depth() {
		return ntr_depth;
	}
	public void setNtr_depth(int ntr_depth) {
		this.ntr_depth = ntr_depth;
	}
	public Date getNtr_regdate() {
		return ntr_regdate;
	}
	public void setNtr_regdate(Date ntr_regdate) {
		this.ntr_regdate = ntr_regdate;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	
	@Override
	public String toString() {
		return "NoticeReplyVO [ntb_num=" + ntb_num + ", ntr_num=" + ntr_num + ", ntr_numch=" + ntr_numch
				+ ", ntr_content=" + ntr_content + ", ntr_depth=" + ntr_depth + ", ntr_regdate=" + ntr_regdate
				+ ", u_id=" + u_id + "]";
	}
	
}
