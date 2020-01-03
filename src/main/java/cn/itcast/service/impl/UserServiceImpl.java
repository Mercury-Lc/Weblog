package cn.itcast.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

import cn.itcast.pojo.User;
import cn.itcast.service.UserService;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
    private MongoTemplate mt; 
	
	public void addUser(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		dbObject.put("userName", user.getUserName());
		dbObject.put("password", user.getPassword());
		dbObject.put("email", user.getEmail());
		mt.getCollection("user").save(dbObject);
	}
	
	public User loginUser(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		DBCursor result = mt.getCollection("user").find(dbObject);
		DBObject obj = result.next();
		String userName = obj.toMap().get("userName").toString();
		String passward = obj.toMap().get("passward").toString();
		if(userName.equals(user.getUserName())&&passward.equals(user.getPassword())) {
			return user;
		}else {
			return null;
		}
	}
	
	public void updateUser(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		
		DBObject updateObject = new BasicDBObject();
		updateObject.put("userName", user.getUserName());
		updateObject.put("password", user.getPassword());
		updateObject.put("email", user.getEmail());
		
		DBObject setObject = new BasicDBObject();
		setObject.put("$set",updateObject);
		mt.getCollection("user").update(dbObject,setObject);
	}
	
	public void updateComment(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		
		DBObject updateObject = new BasicDBObject();
		updateObject.put("userName", user.getUserName());
		updateObject.put("password", user.getPassword());
		updateObject.put("email", user.getEmail());
		
		DBObject setObject = new BasicDBObject();
		setObject.put("$set",updateObject);
		mt.getCollection("user").update(dbObject,setObject);
	}
}
