package co.yedam.prj.purchase.vo;

import java.util.Date;

public class PurchaseVO {
	private String u_id;
	private String s_id;
	private String i_code;
	private Date i_regdate;
	private Date e_date;
	
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
	
	
}
