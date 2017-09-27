package com.sys.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sys.dao.TeamDao;
import com.sys.model.Player;
import com.sys.model.Team;
import com.sys.service.TeamService;

@Service
public class TeamServiceImpl implements TeamService{
	@Autowired
	private TeamDao teamdao;
	
	public void addteam(String name,String password,String phone){
		
		teamdao.addteam(name, password, phone);
		
	}
	
	public Team login(String phone,String password){
		
		return teamdao.login(phone, password);

	}
	
	public List<Player> SelectPlayer(String team_id){
		
		return teamdao.SelectPlayer(team_id);
	}
	
	public List<Map> Selectmatch(String team_id){
		
		return teamdao.Selectmatch(team_id);
	}
}
