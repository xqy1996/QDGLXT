package com.sys.dao;

import java.util.List;

import com.sys.model.Player;
import com.sys.model.Team;

public interface playerDao {
	public void addPlayer(Player player);
    public List<Player> getAllPlayer(String team_id);
    public void deletPlayer(String player_id);
   
}
