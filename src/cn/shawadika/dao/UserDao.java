package cn.shawadika.dao;

import cn.shawadika.entity.User;

public interface UserDao {
	//����ѧ��
	public void insertUser(User user);
	//��ѯ����
	public User findAllUser();
}
