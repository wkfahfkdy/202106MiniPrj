package co.yedam.prj.member.vo;

import java.util.Date;

public class MemberVO {

	private String u_id;
	private String u_pwd;
	private String u_name;
	private String u_adr;
	private int u_adrcode;
	private String u_tel;
	private String u_mail;
	private String joinwait;
	private String s_reg;
	private int s_pay;
	private Date regdate;
	private int mileage;
	private int mileageU;
	private int mileageD;
	private String s_file;
	private String u_adr2;
	private String s_id; 
	private String i_code;
	private Date i_regdate;
	private Date e_date;
	private int i_pay;
	private String i_name;
	private int r_code;
	
	private int firstRecordIndex;	// Paging 게시판 버튼 index
	private int lastRecordIndex;	// Paging 게시판 버튼 index
	private int totalCnt; // 게시글 전체 수
	
	public int getMileageU() {
		return mileageU;
	}
	public void setMileageU(int mileageU) {
		this.mileageU = mileageU;
	}
	public int getMileageD() {
		return mileageD;
	}
	public void setMileageD(int mileageD) {
		this.mileageD = mileageD;
	}

	
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_adr() {
		return u_adr;
	}
	public void setU_adr(String u_adr) {
		this.u_adr = u_adr;
	}
	public int getU_adrcode() {
		return u_adrcode;
	}
	public void setU_adrcode(int u_adrcode) {
		this.u_adrcode = u_adrcode;
	}
	public String getU_tel() {
		return u_tel;
	}
	public void setU_tel(String u_tel) {
		this.u_tel = u_tel;
	}
	public String getU_mail() {
		return u_mail;
	}
	public void setU_mail(String u_mail) {
		this.u_mail = u_mail;
	}
	public String getJoinwait() {
		return joinwait;
	}
	public void setJoinwait(String joinwait) {
		this.joinwait = joinwait;
	}
	public String getS_reg() {
		return s_reg;
	}
	public void setS_reg(String s_reg) {
		this.s_reg = s_reg;
	}
	public int getS_pay() {
		return s_pay;
	}
	public void setS_pay(int s_pay) {
		this.s_pay = s_pay;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [u_id=" + u_id + ", u_pwd=" + u_pwd + ", u_name=" + u_name + ", u_adr=" + u_adr
				+ ", u_adrcode=" + u_adrcode + ", u_tel=" + u_tel + ", u_mail=" + u_mail + ", joinwait=" + joinwait
				+ ", s_reg=" + s_reg + ", s_pay=" + s_pay + ", regdate=" + regdate + "]";
	}
	public String getS_file() {
		return s_file;
	}
	public void setS_file(String s_file) {
		this.s_file = s_file;
	}
	public int getMileage() {
		return mileage;
	}
	public void setMileage(int mileage) {
		this.mileage = mileage;
	}
	public String getU_adr2() {
		return u_adr2;
	}
	public void setU_adr2(String u_adr2) {
		this.u_adr2 = u_adr2;
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
	public String getI_name() {
		return i_name;
	}
	public void setI_name(String i_name) {
		this.i_name = i_name;
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
	public int getR_code() {
		return r_code;
	}
	public void setR_code(int r_code) {
		this.r_code = r_code;
	}

	
}
