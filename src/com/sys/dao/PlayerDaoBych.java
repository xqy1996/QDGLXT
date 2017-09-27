package com.sys.dao;

import java.util.List;

import com.sys.model.Player;


public interface PlayerDaoBych {
	List<Player> getPlayerById(int id);
	Player getPlayerByPID(int player_id);
	int updatePlayerByPID(int player_id,int player_first);
}
