package co.yedam.prj.purchase.vo;

import java.util.Date;

public class PurchaseVO {
	private String u_id;
	private String s_id;
	private String i_code;
	private Date i_regdate;
	private Date e_date;
	private int i_pay;
	private String i_name;
	private int week;
	private String p_image;
	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getI_code() {
		return i_code;
	}
	public void setI_code(String i_code) {
		this.i_code = i_code;
	}
	public Date getI_regdate() {
		return i_regdate;
	}
	public void setI_regdate(Date i_regdate) {
		this.i_regdate = i_regdate;
	}
	public Date getE_date() {
		return e_date;
	}
	public void setE_date(Date e_date) {
		this.e_date = e_date;
	}
	public int getI_pay() {
		return i_pay;
	}
	public void setI_pay(int i_pay) {
		this.i_pay = i_pay;
	}
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
	}
	public int getWeek() {
		return week;
	}
	public void setWeek(int week) {
		this.week = week;
	}
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
	}
	
	
	
	
}
