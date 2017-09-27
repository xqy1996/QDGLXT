package com.sys.model;

public class AvgScore {
private String player_id;
private String bpg;
private String spg ;
private String pts;
private String tos;

public String getPlayer_id() {
	return player_id;
}
public void setPlayer_id(String player_id) {
	this.player_id = player_id;
}
public String getBpg() {
	return bpg;
}
public void setBpg(String bpg) {
	this.bpg = bpg;
}
public String getSpg() {
	return spg;
}
public void setSpg(String spg) {
	this.spg = spg;
}
public String getPts() {
	return pts;
}
public void setPts(String pts) {
	this.pts = pts;
}
public String getTos() {
	return tos;
}
public void setTos(String tos) {
	this.tos = tos;
}
@Override
public String toString() {
	return "AvgScore [player_id=" + player_id + ", bpg=" + bpg + ", spg=" + spg
			+ ", pts=" + pts + ", tos=" + tos + "]";
}


}
