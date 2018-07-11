package kr.block.codingdora.vo;

public class FundingVO {
	private int f_num;
	private String userid;
	private String f_name;
	private String f_content;
	private String f_introduce;
	private String f_plan;
	private String f_target;
	private String f_effect;
	private String f_goalMoney;
	private String f_totalMoney;
	private String f_targetWallet;
	private String f_term;
	private String f_images;

	public FundingVO() {}

	public FundingVO(int f_num, String userid, String f_name, String f_content, String f_introduce, String f_plan,
			String f_target, String f_effect, String f_goalMoney, String f_totalMoney, String f_targetWallet,
			String f_term, String f_images) {
		super();
		this.f_num = f_num;
		this.userid = userid;
		this.f_name = f_name;
		this.f_content = f_content;
		this.f_introduce = f_introduce;
		this.f_plan = f_plan;
		this.f_target = f_target;
		this.f_effect = f_effect;
		this.f_goalMoney = f_goalMoney;
		this.f_totalMoney = f_totalMoney;
		this.f_targetWallet = f_targetWallet;
		this.f_term = f_term;
		this.f_images = f_images;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getF_name() {
		return f_name;
	}

	public void setF_name(String f_name) {
		this.f_name = f_name;
	}

	public String getF_content() {
		return f_content;
	}

	public void setF_content(String f_content) {
		this.f_content = f_content;
	}

	public String getF_introduce() {
		return f_introduce;
	}

	public void setF_introduce(String f_introduce) {
		this.f_introduce = f_introduce;
	}

	public String getF_plan() {
		return f_plan;
	}

	public void setF_plan(String f_plan) {
		this.f_plan = f_plan;
	}

	public String getF_target() {
		return f_target;
	}

	public void setF_target(String f_target) {
		this.f_target = f_target;
	}

	public String getF_effect() {
		return f_effect;
	}

	public void setF_effect(String f_effect) {
		this.f_effect = f_effect;
	}

	public String getF_goalMoney() {
		return f_goalMoney;
	}

	public void setF_goalMoney(String f_goalMoney) {
		this.f_goalMoney = f_goalMoney;
	}

	public String getF_totalMoney() {
		return f_totalMoney;
	}

	public void setF_totalMoney(String f_totalMoney) {
		this.f_totalMoney = f_totalMoney;
	}

	public String getF_targetWallet() {
		return f_targetWallet;
	}

	public void setF_targetWallet(String f_targetWallet) {
		this.f_targetWallet = f_targetWallet;
	}

	public String getF_term() {
		return f_term;
	}

	public void setF_term(String f_term) {
		this.f_term = f_term;
	}

	public String getF_images() {
		return f_images;
	}

	public void setF_images(String f_images) {
		this.f_images = f_images;
	}

	@Override
	public String toString() {
		return "FundingVO [f_num=" + f_num + ", userid=" + userid + ", f_name=" + f_name + ", f_content=" + f_content
				+ ", f_introduce=" + f_introduce + ", f_plan=" + f_plan + ", f_target=" + f_target + ", f_effect="
				+ f_effect + ", f_goalMoney=" + f_goalMoney + ", f_totalMoney=" + f_totalMoney + ", f_targetWallet="
				+ f_targetWallet + ", f_term=" + f_term + ", f_images=" + f_images + "]";
	}

	
}
