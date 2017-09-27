package com.sys.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.sys.model.AvgScore;
import com.sys.model.CompetitionRecord;
import com.sys.model.DetailedScore;
import com.sys.model.Player;
import com.sys.model.Team;

public interface CompetitionDao {

	//得到比赛赛程
	public List<Map> getSchedule(CompetitionRecord competitionRecord);
	//得到指定队伍特定的比赛详细得分记录
	public List<Map> getDetailed(@Param(value="cid")int cr_id,@Param(value="tid")int team_id); 
	//得到球队
	 public Team getTeamByName(String team_name);
    //得到比赛信息
	 public List<CompetitionRecord> getComRecord(String cr_team1,String cr_team2);
	 
	//得到数据信息
	public  List<AvgScore> getdScores (List<String> list);
	
	//得到球员
	public Player getPlayerId(String id);
}
