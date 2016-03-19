package cn.shawadika.entity;

public class User {
	private String id;
	private String name;
	private String sex;
	private String type;//用户类型1为学生2为老师
	private Integer loginTimes;// 登录次数
	private String belongClass;// 班级
	private String belongSchool;// 学校
	private String dept;// 系
	private String specialty;//专业
	private Long lastTimeLogin;//最后登录时间
	private String studentNum;// 
	private String password;//
	private Long firstTimeLogin;//第一次登录时间
	
	public Long getFirstTimeLogin() {
		return firstTimeLogin;
	}
	public void setFirstTimeLogin(Long firstTimeLogin) {
		this.firstTimeLogin = firstTimeLogin;
	}
	public Long getLastTimeLogin() {
		return lastTimeLogin;
	}
	public void setLastTimeLogin(Long lastTimeLogin) {
		this.lastTimeLogin = lastTimeLogin;
	}
	public String getDept() {
		return dept;
	}
	public void setDept(String dept) {
		this.dept = dept;
	}
	public String getSpecialty() {
		return specialty;
	}
	public void setSpecialty(String specialty) {
		this.specialty = specialty;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getLoginTimes() {
		return loginTimes;
	}
	public void setLoginTimes(Integer loginTimes) {
		this.loginTimes = loginTimes;
	}
	public String getBelongClass() {
		return belongClass;
	}
	public void setBelongClass(String belongClass) {
		this.belongClass = belongClass;
	}
	public String getBelongSchool() {
		return belongSchool;
	}
	public void setBelongSchool(String belongSchool) {
		this.belongSchool = belongSchool;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", sex=" + sex + ", type="
				+ type + ", loginTimes=" + loginTimes + ", belongClass="
				+ belongClass + ", belongSchool=" + belongSchool + ", dept="
				+ dept + ", specialty=" + specialty + ", lastTimeLogin="
				+ lastTimeLogin + ", studentNum=" + studentNum + ", password="
				+ password + ", firstTimeLogin=" + firstTimeLogin + "]";
	}
	
}
