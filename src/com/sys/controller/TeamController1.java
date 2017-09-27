package com.sys.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sys.model.DataGridResult;
import com.sys.model.Team;
import com.sys.service.TeamService;
import com.sys.service.TeamService1;


@Controller
public class TeamController1 {
	@Autowired
	private TeamService1 teamService;
	
	
	
	@RequestMapping("getTeamById/{team_id}")
	@ResponseBody
	public DataGridResult getGcmcById(@PathVariable("team_id")int team_id){
	
		System.out.println("进行到servlet");
		return teamService.getTeamById(team_id);
	}
	
	@RequestMapping(value="updateTeam")
	@ResponseBody
	public int updateTeam(String id,String name,String address,String contents){
		int i=8;
		System.out.println("id:"+id);
		System.out.println("name:"+name);
		System.out.println("address:"+address);
		System.out.println("contents:"+contents);
		
		//System.out.println(name);
		//System.out.println(team+"teams是");
		/*System.out.println("team_id是："+team_id);*/
		System.out.println("执行到controller:"+i);
		return teamService.updateTeam(id,name,address,contents);

	}
	@RequestMapping("getById/{team_id}")
	@ResponseBody
	public Team getById(@PathVariable("team_id") int team_id){
		System.out.println("执行到____________servlet");
		return teamService.getById(team_id);
	}
}
