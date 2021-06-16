package co.yedam.prj.revBoard.vo;

import java.util.Date;

public class revBoardVO2 {
	
	private int rb_num;
	private String rb_title;
	private String u_id;
	private Date rb_regdate;
	private int rb_hit;
	private String rb_content;
	private int rb_like;
	private String rb_image;
	
	public int getRb_num() {
		return rb_num;
	}
	
	
	public String getRb_image() {
		return rb_image;
	}


	public void setRb_image(String rb_image) {
		this.rb_image = rb_image;
	}


	public void setRb_num(int rb_num) {
		this.rb_num = rb_num;
	}
	
	public String getRb_title() {
		return rb_title;
	}
	public void setRb_title(String rb_title) {
		this.rb_title = rb_title;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public Date getRb_regdate() {
		return rb_regdate;
	}
	public void setRb_regdate(Date rb_regdate) {
		this.rb_regdate = rb_regdate;
	}
	public int getRb_hit() {
		return rb_hit;
	}
	public void setRb_hit(int rb_hit) {
		this.rb_hit = rb_hit;
	}
	public String getRb_content() {
		return rb_content;
	}
	public void setRb_content(String rb_content) {
		this.rb_content = rb_content;
	}
	public int getRb_like() {
		return rb_like;
	}
	public void setRb_like(int rb_like) {
		this.rb_like = rb_like;
	}
	
	
	
}
