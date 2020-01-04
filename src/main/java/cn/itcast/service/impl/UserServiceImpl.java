package cn.itcast.service.impl;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.core.query.Update;
import org.springframework.stereotype.Service;

import com.mongodb.BasicDBObject;
import com.mongodb.DBCursor;
import com.mongodb.DBObject;

import cn.itcast.pojo.Book;
import cn.itcast.pojo.Order;
import cn.itcast.pojo.OrderList;
import cn.itcast.pojo.User;
import cn.itcast.service.UserService;
import cn.itcast.util.BeanUtil;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
    private MongoTemplate mt; //自动注入MongoTemplate
	//添加用户
	public void signUp(User user) {
		System.out.println("!");
		DBObject dbObject = new BasicDBObject();
		Field [] fields = user.getClass().getDeclaredFields();
		for(int i=0;i<fields.length;i++){
            Field f = fields[i];
            f.setAccessible(true);//设置属性可读
            try {
            	dbObject.put(f.getName(),f.get(user));
            } catch (IllegalArgumentException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
		mt.getCollection("user").save(dbObject);
	}
	//判断用户名密码
	public User loginUser(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		DBObject fieldObject = new BasicDBObject();//指定返回字段
		fieldObject.put("password",true);
		
		DBCursor result = mt.getCollection("user").find(dbObject,fieldObject);
		try {
			DBObject obj = result.next();
			String _id = obj.toMap().get("_id").toString();
			String passward = obj.toMap().get("password").toString();
			if(_id.equals(user.get_id())&&passward.equals(user.getPassword())) {
				return user;
			}else {
				return null;
			}
		}catch(Exception e){
			return null;
		}
		
		
	}
	//更新用户信息
	public void updateUser(User user) {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",user.get_id());
		
		DBObject updateObject = new BasicDBObject();
		updateObject.put("password", user.getPassword());
		updateObject.put("email", user.getEmail());
		
		DBObject setObject = new BasicDBObject();
		setObject.put("$set",updateObject);
		mt.getCollection("user").update(dbObject,setObject);
	}
	//查询未付款订单
	public OrderList selectunOrder(String _id) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",_id);
		DBObject fieldObject = new BasicDBObject();//指定返回字段
		fieldObject.put("unOrderList",true);
		DBCursor result = mt.getCollection("user").find(dbObject,fieldObject);
	    try {
	    	DBObject obj = result.next();
		    OrderList orderList = BeanUtil.dbObject2Bean(obj, new OrderList());
			return orderList;
	    }catch(Exception e){
			return null;
		}
	}
	//添加未付款订单
	public void unOrder(ObjectId _userid,List<Order> List) {
		Query query = Query.query(Criteria.where("_id").is(_userid));
        Update update = new Update();
        
        OrderList unOrder = new OrderList();
        unOrder.setOrderList(List);
        ObjectId id = new ObjectId();
        unOrder.set_id(id);
        update.addToSet("unOrderList", unOrder);
        
        mt.upsert(query, update, "user");
	}
	//删除未付款订单
	public void delunOrder(ObjectId _userid,ObjectId _unOrderid) {
		Query query = Query.query(Criteria.where("_id").is(_userid)
                .and("unOrderList.unOrder._id").is(_unOrderid));
        Update update = new Update();
        mt.findAllAndRemove(query, "user");
        update.unset("CartList.$");
        mt.updateFirst(query, update, "user");
	}
	//查询订单
	public OrderList selectOrder(String _id) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",_id);
		DBObject fieldObject = new BasicDBObject();//指定返回字段
		fieldObject.put("OrderList",true);
		DBCursor result = mt.getCollection("user").find(dbObject,fieldObject);
	    try {
	    	DBObject obj = result.next();
		    OrderList orderList = BeanUtil.dbObject2Bean(obj, new OrderList());
			return orderList;
	    }catch(Exception e){
			return null;
		}
	}
	//添加订单
	public void addOrder(ObjectId _userid,List<Order> List) {
		
		Query query = Query.query(Criteria.where("_id").is(_userid));
        Update update = new Update();
        
        OrderList Order = new OrderList();
        Order.setOrderList(List);
        ObjectId id = new ObjectId();
        Order.set_id(id);
        update.addToSet("OrderList", Order);
        
        mt.upsert(query, update, "user");
	}
	//查询购物车
	public OrderList selectCart(String _id) throws IllegalAccessException, InvocationTargetException, NoSuchMethodException {
		DBObject dbObject = new BasicDBObject();
		dbObject.put("_id",_id);
		DBObject fieldObject = new BasicDBObject();//指定返回字段
		fieldObject.put("CartList",true);
		DBCursor result = mt.getCollection("user").find(dbObject,fieldObject);
	    try {
	    	DBObject obj = result.next();
		    OrderList orderList = BeanUtil.dbObject2Bean(obj, new OrderList());
			return orderList;
	    }catch(Exception e){
			return null;
		}
	}
	//添加购物车
	public void addCart(ObjectId _userid,Order cart) {
		Query query = Query.query(Criteria.where("_id").is(_userid));
        Update update = new Update();

        update.addToSet("CartList", cart);
        
        mt.upsert(query, update, "user");
	}
	//删除购物车
	public void delCart(ObjectId _userid,ObjectId _cartid) {
		Query query = Query.query(Criteria.where("_id").is(_userid)
                .and("CartList.cart._id").is(_cartid));
        Update update = new Update();
        update.unset("CartList.$");
        mt.updateFirst(query, update, "user");
	}
}
