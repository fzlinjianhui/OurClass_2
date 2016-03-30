package cn.shawadika.dbutil;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.shawadika.dao.UserDao;
import cn.shawadika.dao.newInfoDao;
import cn.shawadika.entity.User;
import cn.shawadika.entity.newInfo;
import cn.shawadika.util.Md5Util;

public class DBopera extends DBinit {
	private static UserDao userDao;
	private static newInfoDao newInfoDao;
	private static SqlSession sqlSession;

	static SqlSessionFactory sqlSessionFactory = null;
	static {
		sqlSessionFactory = DBinit.getSqlSessionFactory();
		
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
			sqlSession = sqlSessionFactory.openSession();
			userDao = (UserDao) sqlSession.getMapper(UserDao.class);
			user2 = userDao.login(user);
		} finally {
			sqlSession.close();
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
			sqlSession = sqlSessionFactory.openSession();
			userDao = (UserDao) sqlSession.getMapper(UserDao.class);
			userDao.changeUserInfo(user);
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
		
	}
	public static void createSchoolNews(){
		 try {
			 sqlSession=sqlSessionFactory.openSession();
			 newInfoDao=(newInfoDao)sqlSession.getMapper(newInfoDao.class);
			 newInfo info=new newInfo();
			 info.setContent("测试");
			 info.setIneffect("1");
			 info.setRes1("");
			 info.setRes2("");
			 info.setTime(0l);
			 info.setTitle("test");
			 info.setType("1");
			 info.setUserId("000001");
			 System.out.println(info.toString());
			 newInfoDao.insertNewInfo(info);
		}catch(Exception e){
			e.getMessage();
		} finally {
			// TODO: handle exception
			sqlSession.commit();
			sqlSession.close();
		}
	}
	/**
	 * 以下是测试方法
	 */
	 public static void main(String[] args) {
		 try {
			 sqlSession=sqlSessionFactory.openSession();
			 newInfoDao=(newInfoDao)sqlSession.getMapper(newInfoDao.class);
			 newInfo info=new newInfo();
			 info.setContent("测试");
			 info.setIneffect("1");
			 info.setRes1("");
			 info.setRes2("");
			 info.setTime(0l);
			 info.setTitle("test");
			 info.setType("1");
			 info.setUserId("000001");
			 System.out.println(info.toString());
			 newInfoDao.insertNewInfo(info);
		}catch(Exception e){
			e.getMessage();
		} finally {
			sqlSession.commit();
			sqlSession.close();
		}
	 }
}
