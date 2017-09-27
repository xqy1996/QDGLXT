package com.sys.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sys.dao.PlayerDaoBych;
import com.sys.model.DataGridResult;
import com.sys.model.Player;
import com.sys.model.PlayerBych;
import com.sys.service.PlayerServiceBych;
import com.sys.util.PageUtil;

@Service
public class PlayerServiceImplBych implements PlayerServiceBych{
	@Autowired
	PlayerDaoBych playerDao;
	
	@Override
	public DataGridResult getPlayerById(int id) {
		// TODO Auto-generated method stub
		List<Player> list=playerDao.getPlayerById(id);
		for(Player p:list){
		System.out.println("--------------");
		System.out.println(p);
		}
		return  PageUtil.convertToResult(list);
	}

	@Override
	public Player getPlayerByPID(int player_id) {
		// TODO Auto-generated method stub
		return playerDao.getPlayerByPID(player_id);
	}

	@Override
	public int updatePlayerByPID(int player_id, int player_first) {
		// TODO Auto-generated method stub
		return playerDao.updatePlayerByPID(player_id, player_first);
	}

}
