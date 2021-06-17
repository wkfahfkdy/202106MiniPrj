package co.yedam.prj.bread.vo;

import java.util.Date;

public class BreadVO {
	
	//스토어 관련
	private String s_id; // 스토어 고유넘버
	private	String u_id;
	private String s_name; //이름
	private String s_adr; //주소
	private String s_like; // 좋아요 수
	private String s_tel; // 전화번호
	private String s_content; // 상세정보 혹은 사장님이 남기고 싶은 코멘트
	private String s_region; //스토어 위치
	private String s_image; // 스토어 사진
	private String store_hit; // 방문자수 넣을지 말지?
	private Date s_opendate;
	private String u_name;
	private String r_code; //지역구분코드
	// 빵 관련
	private String b_id; //빵 코드
	private String b_name; //빵 이름
	private String b_qty; //빵 수량


	private String b_comment; //빵 설명
	// 빵이 있는 가게 S_id 가져오기
	private String b_main;
	private String b_image; // 빵 이미지
	private String b_like; // 빵 인기도
	private String b_price; // 빵 가격
	
	
	
	
	@Override
	public String toString() {
		return "BreadVO [s_id=" + s_id + ", u_id=" + u_id + ", s_name=" + s_name + ", s_adr=" + s_adr + ", s_like="
				+ s_like + ", s_tel=" + s_tel + ", s_content=" + s_content + ", s_region=" + s_region + ", s_image="
				+ s_image + ", store_hit=" + store_hit + ", s_opendate=" + s_opendate + ", u_name=" + u_name
				+ ", r_code=" + r_code + ", b_id=" + b_id + ", b_name=" + b_name + ", b_qty=" + b_qty + ", b_comment="
				+ b_comment + ", b_main=" + b_main + ", b_image=" + b_image + ", b_like=" + b_like + ", b_price="
				+ b_price + "]";
	}
	public String getR_code() {
		return r_code;
	}
	public void setR_code(String r_code) {
		this.r_code = r_code;
	}
	public String getS_id() {
		return s_id;
	}
	public void setS_id(String s_id) {
		this.s_id = s_id;
	}
	public String getS_name() {
		return s_name;
	}
	public void setS_name(String s_name) {
		this.s_name = s_name;
	}
	public String getS_adr() {
		return s_adr;
	}
	public void setS_adr(String s_adr) {
		this.s_adr = s_adr;
	}
	public String getS_like() {
		return s_like;
	}
	public void setS_like(String s_like) {
		this.s_like = s_like;
	}
	public String getS_tel() {
		return s_tel;
	}
	public void setS_tel(String s_tel) {
		this.s_tel = s_tel;
	}
	public String getS_content() {
		return s_content;
	}
	public void setS_content(String s_content) {
		this.s_content = s_content;
	}
	public String getS_region() {
		return s_region;
	}
	public void setS_region(String s_region) {
		this.s_region = s_region;
	}
	public String getS_image() {
		return s_image;
	}
	public void setS_image(String s_image) {
		this.s_image = s_image;
	}
	public String getStore_hit() {
		return store_hit;
	}
	public void setStore_hit(String store_hit) {
		this.store_hit = store_hit;
	}
	public String getB_id() {
		return b_id;
	}
	public void setB_id(String b_id) {
		this.b_id = b_id;
	}
	public String getB_name() {
		return b_name;
	}
	public void setB_name(String b_name) {
		this.b_name = b_name;
	}
	public String getB_qty() {
		return b_qty;
	}
	public void setB_qty(String b_qty) {
		this.b_qty = b_qty;
	}
	public String getB_image() {
		return b_image;
	}
	public void setB_image(String b_image) {
		this.b_image = b_image;
	}
	
	public String getB_like() {
		return b_like;
	}
	public void setB_like(String b_like) {
		this.b_like = b_like;
	}
	public String getB_price() {
		return b_price;
	}
	public void setB_price(String b_price) {
		this.b_price = b_price;
	}
	
	public String getB_comment() {
		return b_comment;
	}
	public void setB_comment(String b_comment) {
		this.b_comment = b_comment;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public Date getS_opendate() {
		return s_opendate;
	}
	public void setS_opendate(Date s_opendate) {
		this.s_opendate = s_opendate;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getB_main() {
		return b_main;
	}
	public void setB_main(String b_main) {
		this.b_main = b_main;
	}
	
	
}
















