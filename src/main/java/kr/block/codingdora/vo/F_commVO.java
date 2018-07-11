package kr.block.codingdora.vo;

public class F_commVO {
	private int f_num;
	private int f_comm_num;
	private String f_comm_text;
	private String userid;
	
	public F_commVO() {}

	public F_commVO(int f_num, int f_comm_num, String f_comm_text, String userid) {
		super();
		this.f_num = f_num;
		this.f_comm_num = f_comm_num;
		this.f_comm_text = f_comm_text;
		this.userid = userid;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public int getF_comm_num() {
		return f_comm_num;
	}

	public void setF_comm_num(int f_comm_num) {
		this.f_comm_num = f_comm_num;
	}

	public String getF_comm_text() {
		return f_comm_text;
	}

	public void setF_comm_text(String f_comm_text) {
		this.f_comm_text = f_comm_text;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "F_commVO [f_num=" + f_num + ", f_comm_num=" + f_comm_num + ", f_comm_text=" + f_comm_text + ", userid="
				+ userid + "]";
	}
	
}
