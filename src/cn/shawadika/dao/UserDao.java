package cn.shawadika.dao;

import cn.shawadika.entity.User;

public interface UserDao {
	//插入学生
	public void insertUser(User user);
	//查询所有
	public User findAllUser();
}
