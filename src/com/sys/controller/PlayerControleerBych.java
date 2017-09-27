package com.sys.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sys.model.DataGridResult;
import com.sys.model.Player;
import com.sys.model.PlayerBych;
import com.sys.service.PlayerServiceBych;

@Controller
public class PlayerControleerBych {
	@Autowired
	private PlayerServiceBych playerService;
	
	@RequestMapping(value="getPlayerById")
	@ResponseBody
	public DataGridResult getPlayerById(String id){
		int i=1;
		System.out.println("现在执行到controller23123-----------");
		//int TeamID=Integer.parseInt(id);
		return playerService.getPlayerById(i);
	}
	
	@RequestMapping(value="getPlayerByPID")
	@ResponseBody
	public Player getPlayerByPID(String jplayer_id){
		//jplayer_id="19";
		System.out.println("现在打印id"+jplayer_id);
		int player_id=Integer.parseInt(jplayer_id);
		return  playerService.getPlayerByPID(player_id);
	}
	@RequestMapping(value="updatePlayerByPID")
	@ResponseBody
	public int updatetPlayerByPID(String jplayer_id,String jplayer_first){
		//jplayer_id="19";
		//jplayer_first="19";
		int player_id=Integer.parseInt(jplayer_id);
		int player_first=Integer.parseInt(jplayer_first);
		return playerService.updatePlayerByPID(player_id, player_first);
	}
	 
}
