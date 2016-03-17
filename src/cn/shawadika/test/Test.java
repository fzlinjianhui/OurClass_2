package cn.shawadika.test;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.shawadika.dao.UserDao;
import cn.shawadika.entity.User;
import cn.shawadika.util.Md5Util;

public class Test extends DBinit {
	private static UserDao userDao;
	private static SqlSession sqlSession;
	
	static SqlSessionFactory sqlSessionFactory=null;
	static{
		sqlSessionFactory=DBinit.getSqlSessionFactory();
	}
	public static void main(String[] args) {
		sqlSession=sqlSessionFactory.openSession();
		userDao=(UserDao)sqlSession.getMapper(UserDao.class);
		Test test=new Test();
		User user = test.addUser();
		System.out.println(user);
		
	}
	public User addUser(){
		User user=new User();
		try {
			user.setBelongClass("1");
			user.setBelongSchool("ygxy");
			user.setDept("jsjgcx");
			user.setId("000002");
			user.setLoginTimes(0);
			user.setName("teacher");
			user.setSex("ÄÐ");
			user.setSpecialty("wlgc");
			user.setStudentNum("10101010");
			user.setType("2");
			user.setPassword(Md5Util.md5("111111"+user.getStudentNum()));
			userDao.insertUser(user);
			sqlSession.commit();
		} finally  {
			sqlSession.close();
		}
		
		return user;
	}
}
