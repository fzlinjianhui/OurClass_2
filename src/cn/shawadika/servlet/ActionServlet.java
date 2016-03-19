package cn.shawadika.servlet;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import cn.shawadika.dao.UserDao;
import cn.shawadika.dbutil.DBinit;
import cn.shawadika.dbutil.DBopera;
import cn.shawadika.entity.User;
import cn.shawadika.util.Md5Util;

public class ActionServlet extends HttpServlet{
	//get请求
	public void doGet(HttpServletRequest request,HttpServletResponse response){
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			String uri = request.getRequestURI();//ַ
			String str = uri.substring(uri.lastIndexOf("/"), uri.lastIndexOf("."));//
			//登陆请求
			if("/loginin".equals(str)){
				String userName = request.getParameter("userName");
				String passWord = request.getParameter("passWord");
				String belongSchool = request.getParameter("belongSchool");
				String dept = request.getParameter("dept");
				String specialty = request.getParameter("specialty");//专业
				String belongClass = request.getParameter("belongClass");
				String type = request.getParameter("type");
				User user=new User();
				user.setBelongClass(belongClass);
				user.setBelongSchool(belongSchool);
				user.setDept(dept);
				user.setName(userName);
				user.setPassword(Md5Util.md5(passWord+userName));//密码加上学号一起加密
				user.setSpecialty(specialty);
				user.setType(type);
				
				User user2 = DBopera.login(user);
				System.out.println(user2);
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	//post请求
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		
	}
}
