package com.sys.model;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class Player {
	private String player_first;
	public String getPlayer_first() {
		return player_first;
	}
	public void setPlayer_first(String player_first) {
		this.player_first = player_first;
	}
	private String id;
	 public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private String name; //锟斤拷员锟斤拷锟斤拷
	  
	 private String date;//锟斤拷锟斤拷
	 private String height;//锟斤拷锟�
	 private String weight;//锟斤拷锟斤拷
	 private String playTime;//锟斤拷锟斤拷时锟斤拷

	 private String rebs;//锟斤拷锟斤拷
	 private String asts;//锟斤拷
	 private String spg;  //锟斤拷锟斤拷
	 private String bpg;//锟斤拷帽
	 private String tos;  //失锟斤拷
	 private String pts; //锟矫凤拷
     private String imgUrl; //图片锟斤拷址
     
     private String position; //锟斤拷员位锟矫ｏ拷 1-5   锟斤拷示pg锟斤拷锟斤拷c
     
     private String team_id;
	public String getTeam_id() {
		return team_id;
	}
	public void setTeam_id(String team_id) {
		this.team_id = team_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getHeight() {
		return height;
	}
	public void setHeight(String height) {
		this.height = height;
	}
	public String getWeight() {
		return weight;
	}
	public void setWeight(String weight) {
		this.weight = weight;
	}
	public String getPlayTime() {
		return playTime;
	}
	public void setPlayTime(String playTime) {
		this.playTime = playTime;
	}
	public String getRebs() {
		return rebs;
	}
	public void setRebs(String rebs) {
		this.rebs = rebs;
	}
	public String getAsts() {
		return asts;
	}
	public void setAsts(String asts) {
		this.asts = asts;
	}
	public String getSpg() {
		return spg;
	}
	public void setSpg(String spg) {
		this.spg = spg;
	}
	public String getBpg() {
		return bpg;
	}
	public void setBpg(String bpg) {
		this.bpg = bpg;
	}
	public String getTos() {
		return tos;
	}
	public void setTos(String tos) {
		this.tos = tos;
	}
	public String getPts() {
		return pts;
	}
	public void setPts(String pts) {
		this.pts = pts;
	}
	public String getImgUrl() {
		return imgUrl;
	}
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	@Override
	public String toString() {
		return "Player [name=" + name + ", date=" + date + ", height=" + height
				+ ", weight=" + weight + ", playTime=" + playTime + ", rebs="
				+ rebs + ", asts=" + asts + ", spg=" + spg + ", bpg=" + bpg
				+ ", tos=" + tos + ", pts=" + pts + ", imgUrl=" + imgUrl
				+ ", position=" + position + ", team_id=" + team_id + "]";
	}
	
     
     
}
