package com.kabank.jee.domain;

public class MemberBean {
	private String name, id, pass, ssn, 
					phone, email, profile, addr;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "MemberBean [이름:" + name + ", ID:" + id + ", 비밀번호:" + pass + ", "
				+ "주민번호(생년월일-첫번째 번호):" + ssn + ", 핸드폰 번호:" + phone
				+ ", 이메일:" + email + ", 프로필사진:" + profile + ", 주소:" + addr + "]";
	}
	
}
