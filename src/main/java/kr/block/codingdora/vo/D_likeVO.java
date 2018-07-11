package kr.block.codingdora.vo;

public class D_likeVO {
	private String userid;
	private int d_num;
	
	public D_likeVO() {}
	
	public D_likeVO(String userid, int d_num) {
		super();
		this.userid = userid;
		this.d_num = d_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	@Override
	public String toString() {
		return "D_likeVO [userid=" + userid + ", d_num=" + d_num + "]";
	}
	
}
