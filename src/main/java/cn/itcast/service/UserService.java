package cn.itcast.service;

import cn.itcast.pojo.User;

public interface UserService {
	public void addUser(User user);
	public User loginUser(User user);
	public void updateUser(User user);
}
