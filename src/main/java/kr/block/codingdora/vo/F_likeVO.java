package kr.block.codingdora.vo;

public class F_likeVO {
	private String userid;
	private int f_num;
	
	public F_likeVO() {}

	public F_likeVO(String userid, int f_num) {
		super();
		this.userid = userid;
		this.f_num = f_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	@Override
	public String toString() {
		return "F_likeVO [userid=" + userid + ", f_num=" + f_num + "]";
	}
	
}
