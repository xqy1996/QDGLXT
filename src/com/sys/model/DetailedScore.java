package com.sys.model;

public class DetailedScore {
	private int ds_id;//详细比分ID 主键,自增
	private int cr_id;//比赛ID
	private int player_id;//球员id
	private int bpg_Record;//本场盖帽数
	private int spg_Record;//本场抢断数
	private int asts_Record;//甲队助攻数
	private int pts_Record;//本场得分
	private int tos_Record;//本场失误数
	private int starter;//是否是首发球员（0不是，1是默认为）
	private int ds_status;//是否上场（0没上场,1上场 默认未上）
	public int getDs_id() {
		return ds_id;
	}
	public void setDs_id(int ds_id) {
		this.ds_id = ds_id;
	}
	public int getCr_id() {
		return cr_id;
	}
	public void setCr_id(int cr_id) {
		this.cr_id = cr_id;
	}
	public int getPlayer_id() {
		return player_id;
	}
	public void setPlayer_id(int player_id) {
		this.player_id = player_id;
	}
	public int getBpg_Record() {
		return bpg_Record;
	}
	public void setBpg_Record(int bpg_Record) {
		this.bpg_Record = bpg_Record;
	}
	public int getSpg_Record() {
		return spg_Record;
	}
	public void setSpg_Record(int spg_Record) {
		this.spg_Record = spg_Record;
	}
	public int getAsts_Record() {
		return asts_Record;
	}
	public void setAsts_Record(int asts_Record) {
		this.asts_Record = asts_Record;
	}
	public int getPts_Record() {
		return pts_Record;
	}
	public void setPts_Record(int pts_Record) {
		this.pts_Record = pts_Record;
	}
	public int getTos_Record() {
		return tos_Record;
	}
	public void setTos_Record(int tos_Record) {
		this.tos_Record = tos_Record;
	}
	public int getStarter() {
		return starter;
	}
	public void setStarter(int starter) {
		this.starter = starter;
	}
	public int getDs_status() {
		return ds_status;
	}
	public void setDs_status(int ds_status) {
		this.ds_status = ds_status;
	}
	@Override
	public String toString() {
		return "DetailedScore [ds_id=" + ds_id + ", cr_id=" + cr_id + ", player_id=" + player_id + ", bpg_Record="
				+ bpg_Record + ", spg_Record=" + spg_Record + ", asts_Record=" + asts_Record + ", pts_Record="
				+ pts_Record + ", tos_Record=" + tos_Record + ", starter=" + starter + ", ds_status=" + ds_status + "]";
	}
	
	
}
