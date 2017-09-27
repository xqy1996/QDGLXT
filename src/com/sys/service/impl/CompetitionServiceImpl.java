package com.sys.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sys.dao.CompetitionDao;
import com.sys.model.AvgScore;
import com.sys.model.CompetitionRecord;
import com.sys.model.DetailedScore;
import com.sys.model.Player;
import com.sys.model.Team;
import com.sys.service.CompetitionService;
@Service
public class CompetitionServiceImpl implements CompetitionService {
	@Autowired
	private CompetitionDao competitionDao;


	@Override
	public List<Map> getSchedule(CompetitionRecord competitionRecord) {
		// TODO Auto-generated method stub
		List<Map> list=competitionDao.getSchedule(competitionRecord);
		for(int i = 0; i < list.size(); i++){
			Map map =list.get(i);
			if(map.get("cr_score1")==null){
				list.get(i).put("cr_score1", "-");
			}
			if(map.get("cr_score2")==null){
				list.get(i).put("cr_score2", "-");
			}
		}
		return list;
	}

	@Override
	public List<Map> getDetailed(int cr_id, int team_id) {
		List<Map> list=competitionDao.getDetailed(cr_id, team_id);
		return list;
	}

	@Override
	public Team getTeamByName(String team_name) {
	
		return competitionDao.getTeamByName(team_name);
	}

	@Override
	public List<CompetitionRecord> getComRecord(String cr_team1, String cr_team2) {
		// TODO Auto-generated method stub
		return competitionDao.getComRecord(cr_team1, cr_team2);
	}

	@Override
	public List<AvgScore> getdScores(List<String> crList) {
		// TODO Auto-generated method stub
		return competitionDao.getdScores(crList);
	}

	@Override
	public Player getPlayerId(String id) {
		// TODO Auto-generated method stub
		return  competitionDao.getPlayerId(id);
	}

}

