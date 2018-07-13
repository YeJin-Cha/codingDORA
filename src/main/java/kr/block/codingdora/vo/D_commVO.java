package kr.block.codingdora.vo;

public class D_commVO {
	private int d_num;
	private String d_comm_date;
	private int d_comm_num;
	private String d_comm_text;
	private String userid;
	
	public D_commVO() {}

	public D_commVO(int d_num, String d_comm_date, int d_comm_num, String d_comm_text, String userid) {
		super();
		this.d_num = d_num;
		this.d_comm_date = d_comm_date;
		this.d_comm_num = d_comm_num;
		this.d_comm_text = d_comm_text;
		this.userid = userid;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public int getD_comm_num() {
		return d_comm_num;
	}

	public void setD_comm_num(int d_comm_num) {
		this.d_comm_num = d_comm_num;
	}

	public String getD_comm_date() {
		return d_comm_date;
	}

	public void setD_comm_date(String d_comm_date) {
		this.d_comm_date = d_comm_date;
	}

	public String getD_comm_text() {
		return d_comm_text;
	}

	public void setD_comm_text(String d_comm_text) {
		this.d_comm_text = d_comm_text;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "D_commVO [d_num=" + d_num + ", d_comm_date=" + d_comm_date + ", d_comm_num=" + d_comm_num
				+ ", d_comm_text=" + d_comm_text + ", userid=" + userid + "]";
	}
}
