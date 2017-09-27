package com.sys.service;

import com.sys.model.DataGridResult;
import com.sys.model.Player;
import com.sys.model.PlayerBych;

public interface PlayerServiceBych {

	DataGridResult getPlayerById(int id);
	Player getPlayerByPID(int player_id);
	int updatePlayerByPID(int player_id,int player_first);
}
