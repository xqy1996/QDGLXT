package com.sys.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.sys.model.Player;
import com.sys.model.PlayerAb;
import com.sys.model.Team;
import com.sys.service.CompetitionService;
import com.sys.service.PlayerService;
import com.sys.service.impl.PlayerServiceImpl;
import com.sys.util.Utils;

@Controller
public class playerController {
	@Autowired
	private PlayerService playerService;
	@Autowired
	private CompetitionService competitionService;
@RequestMapping("searchPlayer")
@ResponseBody
public Player searchPlayer(String player_name){
	Player player= new Player();
	System.out.println(player_name);
	
	Map<String , String > map = new HashMap<String, String>();
	

	
		map=Utils.getPlayerByName(player_name);
		 
		 player.setAsts(map.get("asts"));
		 player.setName(map.get("name"));
		 player.setBpg(map.get("bpg"));
		 player.setDate(map.get("date"));
		 player.setHeight(map.get("height"));
		 player.setImgUrl(map.get("imgUrl"));
		 player.setPlayTime(map.get("playTime"));
		 player.setWeight(map.get("weight"));
		 player.setSpg(map.get("spg"));
		 player.setTos(map.get("tos"));
		 player.setPts(map.get("pts"));
		 player.setRebs(map.get("rebs"));
		 //player.setPosition("0");
		 //player.setTeam_id("1");      
	return player;
		// playerService.addPlayer(player);
		
}
@RequestMapping("addPlayer")
@ResponseBody
public void addPlayer(String player_name,String position,HttpServletRequest req){
	Player player= new Player();
	System.out.println(position);
	
	System.out.println(player_name);
	
	Map<String , String > map = new HashMap<String, String>();
	

	
		map=Utils.getPlayerByName(player_name);
		 
		 player.setAsts(map.get("asts"));
		 player.setName(map.get("name"));
		 player.setBpg(map.get("bpg"));
		 player.setDate(map.get("date"));
		 player.setHeight(map.get("height"));
		 player.setImgUrl(map.get("imgUrl"));
		 player.setPlayTime(map.get("playTime"));
		 player.setWeight(map.get("weight"));
		 player.setSpg(map.get("spg"));
		 player.setTos(map.get("tos"));
		 player.setPts(map.get("pts"));
		 player.setRebs(map.get("rebs"));
		 player.setPosition(position);
		 player.setPlayer_first("1");
		  Team team=(Team) req.getSession().getAttribute("team");
		  player.setTeam_id(team.getTeam_id());
		 playerService.addPlayer(player);
}

@RequestMapping("getAllPlayer")
@ResponseBody
public List<Player> getAllPlayer (HttpServletRequest req){
	Team team=(Team) req.getSession().getAttribute("team");
String team_id=team.getTeam_id();
	List<Player> list=playerService.getAllPlayer(team_id);
	for(Player E:list){
		System.out.println(E.getId());
	}
	return list;

}
@RequestMapping("deletPlayer")
public void deletPlayer(String player_id){
	playerService.deletPlayer(player_id);
}

@RequestMapping("analysPlayer")
@ResponseBody
public PlayerAb analysPlayer(String player_id){
	System.out.println("hahah");
	Player player =competitionService.getPlayerId(player_id);
	PlayerAb playerAb=new PlayerAb(player);
	System.out.println(playerAb);
	return playerAb;
	
}
}
