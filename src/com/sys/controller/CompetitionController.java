package com.sys.controller;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.mysql.jdbc.Util;

import com.sys.model.AvgScore;
import com.sys.model.CompetitionRecord;
import com.sys.model.PlayerAb;
import com.sys.model.Team;
import com.sys.service.CompetitionService;

@Controller
public class CompetitionController {
	@Autowired
	private CompetitionService competitionService;
	
	@RequestMapping(value="getSchedules")
	@ResponseBody
	public List<Map> getSchedules(int tiaojian,String text,int status,HttpServletRequest req){
		
		CompetitionRecord competitionRecord=new CompetitionRecord();
		if(text!=""){
		switch(tiaojian){
		case 1:competitionRecord.setCr_address(text);break;
		case 2:competitionRecord.setCr_id(Integer.parseInt(text));break;
		case 3:competitionRecord.setCr_time(text);break;
		}
		}
		competitionRecord.setCr_status(status);
		Team team= (Team)req.getSession().getAttribute("team");
		competitionRecord.setTeam_id(Integer.parseInt(team.getTeam_id()));
		List<Map> list=competitionService.getSchedule(competitionRecord);
	
		return list;
	}
	
	@RequestMapping("getDetaileds")
	@ResponseBody
	public void getDetaileds(int cr_id,int cr_team1,int cr_team2,String team1_name,String team2_name,String team1_mark,String team2_mark,String cr_score1,String cr_score2,HttpSession session){
		System.out.println(cr_id+"|"+cr_team1+"|"+cr_team2+"|"+team1_name);
		List<Map> list1=competitionService.getDetailed(cr_id, cr_team1);
		List<Map> list2=competitionService.getDetailed(cr_id, cr_team2);
		session.setAttribute("cr_score1", cr_score1);
		session.setAttribute("cr_score2", cr_score2);
		session.setAttribute("team1_mark", team1_mark);
		session.setAttribute("team2_mark", team2_mark);
		session.setAttribute("team1_name", team1_name);
		session.setAttribute("team2_name", team2_name);
		session.setAttribute("team1", list1);
		session.setAttribute("team2", list2);
	}
	@RequestMapping("searchTeam")
	@ResponseBody
	public Team searchTeam(String team_name){
	 Team team=	competitionService.getTeamByName(team_name);
	 System.out.println(team);
		return team;
	}
	@RequestMapping("recommendPlayer")
    @ResponseBody
	public List<PlayerAb> recommendPlayer(String cr_team1,HttpServletRequest req){
		Map<String,Double> map =new HashMap<String, Double>();
		List<String>  a =new ArrayList<String>(); //比赛id
		List<PlayerAb>  b= new ArrayList<PlayerAb>();//
		PlayerAb  ab;
		Team team2=(Team)req.getSession().getAttribute("team");
		String  cr_team2 =team2.getTeam_id();
		
	    if(competitionService.getComRecord(cr_team2, cr_team1).size()!=0){
	    	for(CompetitionRecord e:competitionService.getComRecord(cr_team2, cr_team1)) {
	    		a.add(String.valueOf(e.getCr_id()));
	    	
	    	}
		    for(AvgScore e: competitionService.getdScores(a)){
		    	
		         ab=new PlayerAb(competitionService.getPlayerId(e.getPlayer_id()), e);
		         b.add(ab);
		 
		     }
		    Collections.sort(b);
		   
		    
	    }
		 if(!b.isEmpty())return b;
		    else return null;
		
	}
}
