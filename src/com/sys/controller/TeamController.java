package com.sys.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import com.sys.model.Player;
import com.sys.model.Team;
import com.sys.service.TeamService;

@Controller
public class TeamController {
	@Autowired
    private TeamService teamservice;

    
	
	@RequestMapping("addteam")
	
	public String addteam(String username,String password,String phone,HttpServletRequest req, HttpServletResponse resp){
		teamservice.addteam(username,password,phone);
	    Team team=new Team();
	    team.setTeam_name(username);
	    team.setTeam_password(password);
	    team.setTeam_phone(phone);
	    req.getSession().setAttribute("team", team);
	   
	    return "index";
	}
	
	@RequestMapping("login")
	public String login(String phone,String password,HttpServletRequest req){
		
		if(teamservice.login(phone, password)!=null){
		Team team=new Team();
		team =teamservice.login(phone, password);
		req.getSession().setAttribute("team", team);
		return "index";
		}
		return "false";
	}
	
	@RequestMapping("SelectPlayer")
	@ResponseBody
	public List<Player> SelectPlayer(HttpServletRequest req){
		
		Team team=new Team();
		List<Player>list=new ArrayList();
		team=(Team)req.getSession().getAttribute("team");
		
     	list=teamservice.SelectPlayer(team.getTeam_id());
		return list;

	}
	
	@RequestMapping("Selectmatch")
	@ResponseBody
	public List<Map> Selectmatch(HttpServletRequest req){
		
		Team team=new Team();
		List<Map>list=new ArrayList();
		team=(Team)req.getSession().getAttribute("team");
		
     	list=teamservice.Selectmatch(team.getTeam_id());
		return list;

	}
}
