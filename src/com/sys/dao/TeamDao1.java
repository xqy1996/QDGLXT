package com.sys.dao;


import java.util.List;

import com.sys.model.Team;

public interface TeamDao1 {
	int updateTeam(Team team);
	List<Team> getTeamDaoById(int Team_id);
	Team getById(int id);
}
