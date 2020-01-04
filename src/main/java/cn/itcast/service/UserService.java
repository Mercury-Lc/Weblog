package cn.itcast.service;

import java.util.List;

import org.bson.types.ObjectId;

import cn.itcast.pojo.Order;
import cn.itcast.pojo.User;

public interface UserService {
	public void signUp(User user);
	public User loginUser(User user);
	public void updateUser(User user);
	public void unOrder(ObjectId _userid,List<Order> List);
	public void delunOrder(ObjectId _userid,ObjectId _unOrderid);
	public void addOrder(ObjectId _userid,List<Order> List);
	public void addCart(ObjectId _userid,Order cart);
	public void delCart(ObjectId _userid,ObjectId _cartid);
}
