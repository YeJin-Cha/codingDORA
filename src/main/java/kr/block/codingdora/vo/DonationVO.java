package kr.block.codingdora.vo;

public class DonationVO {
	private int d_num;
	private String userid;
	private String d_name;
	private String d_content;
	private String d_introduce;
	private String d_plan;
	private String d_target;
	private String d_effect;
	private String d_goalMoney;
	private String d_totalMoney;
	private String d_targetWallet;
	private String d_term;
	private String d_images;
	
	public DonationVO() {}

	public DonationVO(int d_num, String userid, String d_name, String d_content, String d_introduce, String d_plan,
			String d_target, String d_effect, String d_goalMoney, String d_totalMoney, String d_targetWallet,
			String d_term, String d_images) {
		super();
		this.d_num = d_num;
		this.userid = userid;
		this.d_name = d_name;
		this.d_content = d_content;
		this.d_introduce = d_introduce;
		this.d_plan = d_plan;
		this.d_target = d_target;
		this.d_effect = d_effect;
		this.d_goalMoney = d_goalMoney;
		this.d_totalMoney = d_totalMoney;
		this.d_targetWallet = d_targetWallet;
		this.d_term = d_term;
		this.d_images = d_images;
	}

	public int getD_num() {
		return d_num;
	}

	public void setD_num(int d_num) {
		this.d_num = d_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getD_name() {
		return d_name;
	}

	public void setD_name(String d_name) {
		this.d_name = d_name;
	}

	public String getD_content() {
		return d_content;
	}

	public void setD_content(String d_content) {
		this.d_content = d_content;
	}

	public String getD_introduce() {
		return d_introduce;
	}

	public void setD_introduce(String d_introduce) {
		this.d_introduce = d_introduce;
	}

	public String getD_plan() {
		return d_plan;
	}

	public void setD_plan(String d_plan) {
		this.d_plan = d_plan;
	}

	public String getD_target() {
		return d_target;
	}

	public void setD_target(String d_target) {
		this.d_target = d_target;
	}

	public String getD_effect() {
		return d_effect;
	}

	public void setD_effect(String d_effect) {
		this.d_effect = d_effect;
	}

	public String getD_goalMoney() {
		return d_goalMoney;
	}

	public void setD_goalMoney(String d_goalMoney) {
		this.d_goalMoney = d_goalMoney;
	}

	public String getD_totalMoney() {
		return d_totalMoney;
	}

	public void setD_totalMoney(String d_totalMoney) {
		this.d_totalMoney = d_totalMoney;
	}

	public String getD_targetWallet() {
		return d_targetWallet;
	}

	public void setD_targetWallet(String d_targetWallet) {
		this.d_targetWallet = d_targetWallet;
	}

	public String getD_term() {
		return d_term;
	}

	public void setD_term(String d_term) {
		this.d_term = d_term;
	}

	public String getD_images() {
		return d_images;
	}

	public void setD_images(String d_images) {
		this.d_images = d_images;
	}

	@Override
	public String toString() {
		return "DonationVO [d_num=" + d_num + ", userid=" + userid + ", d_name=" + d_name + ", d_content=" + d_content
				+ ", d_introduce=" + d_introduce + ", d_plan=" + d_plan + ", d_target=" + d_target + ", d_effect="
				+ d_effect + ", d_goalMoney=" + d_goalMoney + ", d_totalMoney=" + d_totalMoney + ", d_targetWallet="
				+ d_targetWallet + ", d_term=" + d_term + ", d_images=" + d_images + "]";
	}

}
