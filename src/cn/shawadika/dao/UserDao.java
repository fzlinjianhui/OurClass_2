package cn.shawadika.dao;

import cn.shawadika.entity.User;

public interface UserDao {
	//插入用户
	public void insertUser(User user);
	//查询所有用户
	public User findAllUser();
	//登录操作
	public User login(User user);
	//修改用户信息
	public void changeUserInfo(User user);
}
