package cn.shawadika.dbutil;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.shawadika.dao.UserDao;
import cn.shawadika.entity.User;

public class DBopera extends DBinit {
	private static UserDao userDao;
	private static SqlSession sqlSession;

	static SqlSessionFactory sqlSessionFactory = null;
	static {
		sqlSessionFactory = DBinit.getSqlSessionFactory();
		sqlSession = sqlSessionFactory.openSession();
		userDao = (UserDao) sqlSession.getMapper(UserDao.class);

	}

	/**
	 * 用户登录操作
	 * 
	 * @param user
	 * @return
	 */
	public static User login(User user) {
		User user2 = null;
		try {
			user2 = userDao.login(user);
		} finally {
		}
	
		return user2;
	}
	/**
	 * 修改用户一些信息
	 * 
	 * @param user
	 */
	public static void changeUserInfo(User user) {
		try {
			userDao.changeUserInfo(user);
		} finally {
			sqlSession.commit();
		}
		
	}

	/**
	 * 以下是测试方法
	 */
	// public static void main(String[] args) {
	// sqlSession=sqlSessionFactory.openSession();
	// userDao=(UserDao)sqlSession.getMapper(UserDao.class);
	// DBopera test=new DBopera();
	// User user = new User();
	// user.setStudentNum("241192160");
	// user.setPassword("66cc7c8771858dd1acdbd3655aa39335");
	// User user2 = test.login(user);
	// System.out.println(user2);
	// }
	// public User addUser(){
	// User user=new User();
	// try {
	// user.setBelongClass("1");
	// user.setBelongSchool("ygxy");
	// user.setDept("jsjgcx");
	// user.setId("000002");
	// user.setLoginTimes(0);
	// user.setName("teacher");
	// user.setSex("男");
	// user.setSpecialty("wlgc");
	// user.setStudentNum("10101010");
	// user.setType("2");
	// user.setPassword(Md5Util.md5("111111"+user.getStudentNum()));
	// userDao.insertUser(user);
	// sqlSession.commit();
	// } finally {
	// sqlSession.close();
	// }
	//
	// return user;
	// }
}
