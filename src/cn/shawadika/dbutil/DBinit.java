package cn.shawadika.dbutil;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class DBinit {
	private final static SqlSessionFactory  sqlSessionFactory;
	private static Reader reader=null;
	static{
		String resource="mybatis-config.xml";
		try {
			reader=Resources.getResourceAsReader(resource);
			
		} catch (Exception e) {
			System.out.println(e.getMessage()+"配置文件出错");
		}
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
	}
	public static SqlSessionFactory getSqlSessionFactory(){
		return sqlSessionFactory;
	}
}
