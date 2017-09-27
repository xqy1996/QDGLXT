package com.sys.service.impl;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sys.dao.TeamDao;
import com.sys.dao.TeamDao1;
import com.sys.model.DataGridResult;
import com.sys.model.Team;
import com.sys.service.TeamService;
import com.sys.service.TeamService1;
import com.sys.util.PageUtil;





@Service
public class TeamImpl1 implements TeamService1 {
	@Autowired
	private TeamDao1 teamDao;
	public Team team=new Team();

	@Override
	public List<Team> getTeam() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DataGridResult getTeamById(int Team_id) {
		List<Team> list = teamDao.getTeamDaoById(Team_id);
		return PageUtil.convertToResult(list);
	}

	@Override
	public int updateTeam(String id,String name,String address,String contents) {
		System.out.println("__________执行到service城______________________");
		System.out.println("id:"+id);
		System.out.println("name:"+name);
		System.out.println("address:"+address);
		System.out.println("contents:"+contents);
		int team_id12=Integer.parseInt(id);
		team.setTeam_id(id);
		team.setTeam_name(name);
		team.setTeam_adress(address);
		team.setTeam_contents(contents);
		int j=teamDao.updateTeam(team);
		return j;
	}

	@Override
	public Team getById(int team_id) {
		// TODO Auto-generated method stub
		 return teamDao.getById(team_id);
	}
	

}

