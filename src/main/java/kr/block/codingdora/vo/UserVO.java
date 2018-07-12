package kr.block.codingdora.vo;

public class UserVO  {

	private String userid;
	private String userpw;
	private String username;
	private String useremail;
	private String userpermit;
	
	public UserVO() {
		super();
	}

	public UserVO(String userid, String userpw, String username, String useremail, String userpermit) {
		super();
		this.userid = userid;
		this.userpw = userpw;
		this.username = username;
		this.useremail = useremail;
		this.userpermit = userpermit;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUseremail() {
		return useremail;
	}

	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getUserpermit() {
		return userpermit;
	}

	public void setUserpermit(String userpermit) {
		this.userpermit = userpermit;
	}

	@Override
	public String toString() {
		return "UserVO [userid=" + userid + ", userpw=" + userpw + ", username=" + username + ", useremail=" + useremail
				+ ", userpermit=" + userpermit+"]";
	}
}
