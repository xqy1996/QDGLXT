package com.sys.model;

public class CompetitionRecord {
	private int team_id;
	private int cr_id;//比赛ID 主键,自增
	private String cr_time;//比赛时间
	private String cr_address;//比赛地点
	private int cr_team1;//甲队id team_id外键
	private int cr_team2;//乙队id team_id外键
	private int cr_score1;//甲队总分
	private int cr_score2;//乙队总分
	private int cr_status;//比赛状态（0表示未开始所以无法查看详细信息，1已进行完比赛可以查看详细比赛）
	public int getCr_id() {
		return cr_id;
	}
	public void setCr_id(int cr_id) {
		this.cr_id = cr_id;
	}
	public String getCr_time() {
		return cr_time;
	}
	public void setCr_time(String cr_time) {
		this.cr_time = cr_time;
	}
	public String getCr_address() {
		return cr_address;
	}
	public void setCr_address(String cr_address) {
		this.cr_address = cr_address;
	}
	public int getCr_team1() {
		return cr_team1;
	}
	public void setCr_team1(int cr_team1) {
		this.cr_team1 = cr_team1;
	}
	public int getCr_team2() {
		return cr_team2;
	}
	public void setCr_team2(int cr_team2) {
		this.cr_team2 = cr_team2;
	}
	public int getCr_score1() {
		return cr_score1;
	}
	public void setCr_score1(int cr_score1) {
		this.cr_score1 = cr_score1;
	}
	public int getCr_score2() {
		return cr_score2;
	}
	public void setCr_score2(int cr_score2) {
		this.cr_score2 = cr_score2;
	}
	public int getCr_status() {
		return cr_status;
	}
	public void setCr_status(int cr_status) {
		this.cr_status = cr_status;
	}
	
	public int getTeam_id() {
		return team_id;
	}
	public void setTeam_id(int team_id) {
		this.team_id = team_id;
	}
	@Override
	public String toString() {
		return "CompetitionRecord [cr_id=" + cr_id + ", cr_time=" + cr_time + ", cr_address=" + cr_address
				+ ", cr_team1=" + cr_team1 + ", cr_team2=" + cr_team2 + ", cr_score1=" + cr_score1 + ", cr_score2="
				+ cr_score2 + ", cr_status=" + cr_status + "]";
	}
	
}
