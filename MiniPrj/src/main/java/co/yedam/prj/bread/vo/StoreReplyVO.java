package co.yedam.prj.bread.vo;

import java.util.Date;

public class StoreReplyVO {

	// Notice 댓글 VO
	private String stb_id;		// 빵 번호
	private int str_num;		// 댓글 번호
	private int str_numch;		// 댓글 자식 번호(계층) - 해당 대댓글이 어느 상위 댓글의 자식인지
	private String str_content;	// 댓글 내용
	private int str_depth;		// 댓글 깊이(계층) - 댓글 : 0, 대댓글 : 1, 대대댓글 : 2 ...
	private Date str_regdate;	// 댓글 작성일자
	private String u_id;
	
	public String getStb_id() {
		return stb_id;
	}
	public void setStb_id(String stb_id) {
		this.stb_id = stb_id;
	}
	public int getStr_num() {
		return str_num;
	}
	public void setStr_num(int str_num) {
		this.str_num = str_num;
	}
	public int getStr_numch() {
		return str_numch;
	}
	public void setStr_numch(int str_numch) {
		this.str_numch = str_numch;
	}
	public String getStr_content() {
		return str_content;
	}
	public void setStr_content(String str_content) {
		this.str_content = str_content;
	}
	public int getStr_depth() {
		return str_depth;
	}
	public void setStr_depth(int str_depth) {
		this.str_depth = str_depth;
	}
	public Date getStr_regdate() {
		return str_regdate;
	}
	public void setStr_regdate(Date str_regdate) {
		this.str_regdate = str_regdate;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	@Override
	public String toString() {
		return "StoreReplyVO [stb_id=" + stb_id + ", str_num=" + str_num + ", str_numch=" + str_numch + ", str_content="
				+ str_content + ", str_depth=" + str_depth + ", str_regdate=" + str_regdate + ", u_id=" + u_id + "]";
	}
	
	
}
