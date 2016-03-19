package cn.shawadika.dbutil;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.shawadika.dao.UserDao;
import cn.shawadika.entity.User;

public class DBopera extends DBinit {
	private static UserDao userDao;
	private static SqlSession sqlSession;
	
	static SqlSessionFactory sqlSessionFactory=null;
	static{
		sqlSessionFactory=DBinit.getSqlSessionFactory();
	}
	/**
	 * 用户登录操作
	 * @param user
	 * @return
	 */
	public static User login(User user){
		sqlSession=sqlSessionFactory.openSession();
		userDao=(UserDao)sqlSession.getMapper(UserDao.class);
		User user2=null;
		try {
			user2 = userDao.login(user);
		} catch (Exception e) {
			e.getMessage();
		}finally{
			sqlSession.close();
		}
		return user2;
	}
	
	
	
	/**
	 * 以下是测试方法
	 */
//	public static void main(String[] args) {
//		sqlSession=sqlSessionFactory.openSession();
//		userDao=(UserDao)sqlSession.getMapper(UserDao.class);
//		DBopera test=new DBopera();
//		User user = test.addUser();
//		System.out.println(user);
//	}
//	public User addUser(){
//		User user=new User();
//		try {
//			user.setBelongClass("1");
//			user.setBelongSchool("ygxy");
//			user.setDept("jsjgcx");
//			user.setId("000002");
//			user.setLoginTimes(0);
//			user.setName("teacher");
//			user.setSex("男");
//			user.setSpecialty("wlgc");
//			user.setStudentNum("10101010");
//			user.setType("2");
//			user.setPassword(Md5Util.md5("111111"+user.getStudentNum()));
//			userDao.insertUser(user);
//			sqlSession.commit();
//		} finally  {
//			sqlSession.close();
//		}
//		
//		return user;
//	}
}
