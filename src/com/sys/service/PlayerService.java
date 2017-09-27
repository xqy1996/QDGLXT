package com.sys.service;

import java.util.List;

import com.sys.dao.playerDao;
import com.sys.model.Player;

public interface PlayerService {
public void addPlayer(Player player);
public List<Player> getAllPlayer(String team_id);
public void deletPlayer(String player_id);
}
