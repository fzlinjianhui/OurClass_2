package cn.shawadika.servlet;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ActionServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
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
				System.out.println(userName+";"+passWord);
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	//post请求
	public void doPost(HttpServletRequest request,HttpServletResponse response){
		
	}
}
