package com.sys.model;

public class Team {
    @Override
	public String toString() {
		return "Team [team_id=" + team_id + ", team_name=" + team_name
				+ ", team_adress=" + team_adress + ", team_phone=" + team_phone
				+ ", team_contents=" + team_contents + ", team_password="
				+ team_password + ", team_mark=" + team_mark + ", team_funds="
				+ team_funds + "]";
	}
	private String team_id;          //Id
    private String team_name;       //球队名字
    private String team_adress;     //地址
    private String team_phone;     //经历电话
    private String team_contents; //宣言
    private String team_password; //密码
    private String team_mark;    //队标
    private String team_funds;  //资金
	public String getTeam_id() {
		return team_id;
	}
	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getTeam_adress() {
		return team_adress;
	}
	public void setTeam_adress(String team_adress) {
		this.team_adress = team_adress;
	}
	public String getTeam_phone() {
		return team_phone;
	}
	public void setTeam_phone(String team_phone) {
		this.team_phone = team_phone;
	}
	public String getTeam_contents() {
		return team_contents;
	}
	public void setTeam_contents(String team_contents) {
		this.team_contents = team_contents;
	}
	public String getTeam_password() {
		return team_password;
	}
	public void setTeam_password(String team_password) {
		this.team_password = team_password;
	}
	public String getTeam_mark() {
		return team_mark;
	}
	public void setTeam_mark(String team_mark) {
		this.team_mark = team_mark;
	}
	public String getTeam_funds() {
		return team_funds;
	}
	public void setTeam_funds(String team_funds) {
		this.team_funds = team_funds;
	}
    
    
}
