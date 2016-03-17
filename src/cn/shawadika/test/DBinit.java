package cn.shawadika.test;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.apache.ibatis.io.Resources;

public class DBinit {
	private final static SqlSessionFactory  sqlSessionFactory;
	static{
		String resource="mybatis-config.xml";
		Reader reader=null;
		try {
			reader=Resources.getResourceAsReader(resource);
		} catch (IOException e) {
			System.out.println(e.getMessage()+"∂¡»°≈‰÷√Œƒº˛ ß∞‹");
		}
		sqlSessionFactory=new SqlSessionFactoryBuilder().build(reader);
	}
	public static SqlSessionFactory getSqlSessionFactory(){
		return sqlSessionFactory;
	}
}
