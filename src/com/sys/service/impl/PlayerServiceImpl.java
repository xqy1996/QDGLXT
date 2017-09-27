package com.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sys.dao.playerDao;
import com.sys.model.Player;
import com.sys.service.PlayerService;
@Service
public class PlayerServiceImpl implements PlayerService {
	@Autowired
private playerDao playerDao;
	@Override
	public void addPlayer(Player player) {
		// TODO Auto-generated method stub
		playerDao.addPlayer(player);
	}
	@Override
	public List<Player> getAllPlayer(String team_id) {
		// TODO Auto-generated method stub
		return playerDao.getAllPlayer(team_id);
	}
	@Override
	public void deletPlayer(String player_id) {
		playerDao.deletPlayer(player_id);
		
	}

}
