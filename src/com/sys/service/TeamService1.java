package com.sys.service;

import java.util.List;

import com.sys.model.DataGridResult;
import com.sys.model.Team;


public interface TeamService1 {
	List<Team> getTeam();
	DataGridResult getTeamById(int Team_id);
	int updateTeam(String id,String name,String address,String contents );
	Team getById(int i);
}	
