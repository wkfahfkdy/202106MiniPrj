package co.yedam.prj.revBoard.vo;

public class RevCommentVO {
	private String c_date;
	private String c_comment;
	private String u_id;
	private String c_recomment;
	private int rb_num;

	
	public int getRb_num() {
		return rb_num;
	}

	public void setRb_num(int rb_num) {
		this.rb_num = rb_num;
	}

	public String getC_date() {
		return c_date;
	}

	public void setC_date(String c_date) {
		this.c_date = c_date;
	}

	public String getC_comment() {
		return c_comment;
	}

	public void setC_comment(String c_comment) {
		this.c_comment = c_comment;
	}

	public String getU_id() {
		return u_id;
	}

	public void setU_id(String u_id) {
		this.u_id = u_id;
	}

	public String getC_recomment() {
		return c_recomment;
	}

	public void setC_recomment(String c_recomment) {
		this.c_recomment = c_recomment;
	}

}
