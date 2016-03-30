package cn.shawadika.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.shawadika.dbutil.DBopera;
import cn.shawadika.entity.User;
import cn.shawadika.util.Md5Util;
/**
 * 用来处理.do结尾的请求
 * @author lin
 *
 */
public class ActionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// post请求
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			String uri = request.getRequestURI();// ַ
			String str = uri.substring(uri.lastIndexOf("/"),
					uri.lastIndexOf("."));//
			// 登陆请求
			if ("/loginin".equals(str)) {
				String studentNum = request.getParameter("studentNum");
				String passWord = request.getParameter("passWord");
				String belongSchool = request.getParameter("belongSchool");
				String dept = request.getParameter("dept");
				String specialty = request.getParameter("specialty");// 专业
				String belongClass = request.getParameter("belongClass");
				String type = request.getParameter("type");
				User user = new User();
				user.setBelongClass(belongClass);
				user.setBelongSchool(belongSchool);
				user.setDept(dept);
				user.setStudentNum(studentNum);
				user.setPassword(Md5Util.md5(passWord + studentNum));// 密码加上学号一起加密
				if (passWord.length() == 32) {
					// 如果该密码长度是32说明是用cookies登录，就不用再进行加密登录
					user.setPassword(passWord);
				}
				user.setSpecialty(specialty);
				user.setType(type);
				// 执行登录操作
				final User user2 = DBopera.login(user);
				if (user2 == null) {
					// 用户登录失败
					request.getSession().setAttribute("wrong", "不存在此用户,请检查");
					response.sendRedirect("loginin.jsp");
					return;
				}
				/*
				 * 向数据库插入数据改变该用户的登录次数和最后一次登陆时间
				 */
				Thread t = new Thread() {
					@Override
					public void run() {
						Integer times = user2.getLoginTimes() + 1;
						user2.setLastTimeLogin(System.currentTimeMillis());
						user2.setLoginTimes(times);
						if (times == 1) {
							// 如果用户是第一次登录记录其第一次登录时间
							user2.setFirstTimeLogin(System.currentTimeMillis());
						}
						DBopera.changeUserInfo(user2);
					}
				};
				t.start();
				// 将用户版定到session
				request.getSession().setAttribute("user", user2);
				// 转发到班级首页
				response.sendRedirect("index.jsp");
				/*
				 * 修改密码等操作
				 */
			} else if ("/changeInfo".equals(str)) {
				PrintWriter writer = response.getWriter();
				String oldPsw = request.getParameter("oldPsw");// 旧密码
				String newPsw = request.getParameter("newPsw");// 新密码
				User user = (User) request.getSession().getAttribute("user");
				if (user == null) {
					// 判断用户的session是否过期，过期需要重新登录
					writer.print("过期请重新登录~！");
					response.sendRedirect("loginin.jsp");
				} else {
					if (!user.getPassword().equals(
							Md5Util.md5(oldPsw + user.getStudentNum()))) {
						// 如果旧密码不正确
						writer.print("旧密码不正确哦~");
					} else {
						user.setPassword(Md5Util.md5(newPsw+user.getStudentNum()));
						// 旧密码正确
						DBopera.changeUserInfo(user);//向数据库更新密码数据
						request.getSession().removeAttribute("user");//修改完密码要求用户重新登录
						request.getSession().setAttribute("wrong", "密码修改成功，请重新登录~");
					}
				}
			}

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (IOException e) {
			System.out.println("转发错误");
			e.printStackTrace();
		}
	}

	// get请求
	public void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			request.setCharacterEncoding("UTF-8");
			response.setContentType("text/html;charset=utf-8");
			String uri = request.getRequestURI();// ַ
			String str = uri.substring(uri.lastIndexOf("/"),
					uri.lastIndexOf("."));//
			if("/createnew".equals(str)){
//				DBopera.
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
}
