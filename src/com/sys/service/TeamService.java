package com.sys.service;

import java.util.List;
import java.util.Map;

import com.sys.model.Player;
import com.sys.model.Team;

public interface TeamService {
	public void addteam(String name,String password,String phone);
	
	public Team login(String phone,String password);
	
	public List<Player> SelectPlayer(String team_id);

	public List<Map> Selectmatch(String team_id);
}
