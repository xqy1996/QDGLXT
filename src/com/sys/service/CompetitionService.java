package com.sys.service;

import java.util.List;
import java.util.Map;

import com.sys.model.AvgScore;
import com.sys.model.CompetitionRecord;
import com.sys.model.DetailedScore;
import com.sys.model.Player;
import com.sys.model.Team;



public interface CompetitionService {

	//得到比赛赛程
	public List<Map> getSchedule(CompetitionRecord competitionRecord);
	//得到指定队伍特定的比赛详细得分记录
	public List<Map> getDetailed(int cr_id,int team_id);
	
	 public Team getTeamByName(String team_name);
	 
	 public List<CompetitionRecord> getComRecord(String cr_team1,String cr_team2);
		public  List<AvgScore> getdScores (List<String> crList);
		public Player getPlayerId(String id);
}

