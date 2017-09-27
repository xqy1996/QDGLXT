package com.sys.model;

import com.sys.util.Utils;

public class PlayerAb implements Comparable<PlayerAb> {
private Player player;

private AvgScore avgScore;
public double att;   //球员进攻
public double deffen; //防守
public double zuzhi;//组织
public double ab1;//综合能力
public double ab2; //综合出场权值
public PlayerAb(Player player, AvgScore avgScore) {
double a=Utils.getAtt(Double.valueOf(player.getPts())),
b=Utils.getDeffen(Double.valueOf(player.getRebs()), Double.valueOf(player.getSpg()),Double.valueOf( player.getBpg())),
c=Utils.getZuzhi(Double.valueOf(player.getAsts()), Double.valueOf(player.getSpg()));
   
   
	this.player = player;
	this.avgScore = avgScore;
	this.att=a;
	this.deffen=b;
	this.zuzhi=c;
	this.ab1=(att+deffen+zuzhi)/3;
	this.ab2=(att+deffen+zuzhi)/3*0.8+0.2*(Double.valueOf(avgScore.getPts())*0.5+Double.valueOf(avgScore.getBpg())*0.3-Double.valueOf(avgScore.getTos())*0.2);
}
public PlayerAb(Player player){
	this.player=player;
	double a=Utils.getAtt(Double.valueOf(player.getPts())),
			b=Utils.getDeffen(Double.valueOf(player.getRebs()), Double.valueOf(player.getSpg()),Double.valueOf( player.getBpg())),
			c=Utils.getZuzhi(Double.valueOf(player.getAsts()), Double.valueOf(player.getSpg()));
			   
			   
				this.player = player;
				
				this.att=a;
				this.deffen=b;
				this.zuzhi=c;
				this.ab1=(att+deffen+zuzhi)/3;
}
public Player getPlayer() {
	return player;
}
public void setPlayer(Player player) {
	this.player = player;
}
public AvgScore getAvgScore() {
	return avgScore;
}
public void setAvgScore(AvgScore avgScore) {
	this.avgScore = avgScore;
}
public double getAtt() {
	return att;
}
public void setAtt(double att) {
	this.att = att;
}
public double getDeffen() {
	return deffen;
}
public void setDeffen(double deffen) {
	this.deffen = deffen;
}
public double getZuzhi() {
	return zuzhi;
}
public void setZuzhi(double zuzhi) {
	this.zuzhi = zuzhi;
}
public double getAb1() {
	return ab1;
}
public void setAb1(double ab1) {
	this.ab1 = ab1;
}
public double getAb2() {
	return ab2;
}
public void setAb2(double ab2) {
	this.ab2 = ab2;
}
@Override
public String toString() {
	return "PlayerAb [player=" + player + ", avgScore=" + avgScore + ", att=" + att + ", deffen=" + deffen + ", zuzhi="
			+ zuzhi + ", ab1=" + ab1 + ", ab2=" + ab2 + "]";
}
@Override
public int compareTo(PlayerAb o) {
	// TODO Auto-generated method stub
	return  (int) (o.ab2-this.ab2);
}



}
