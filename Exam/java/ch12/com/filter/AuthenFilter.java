package ch12.com.filter;

import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class AuthenFilter implements Filter{
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Fitler01 초기화");
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain)
			throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행");
		String name=request.getParameter("name");
		
		if(name==null||name.equals("")) {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer=response.getWriter();
			String message="입력된 name값은 null입니다.";
			writer.println(message);
			}
		filterChain.doFilter(request, response);
	}
	@Override
	public void destroy() {
	
		System.out.println("Filter01 해제");
	}
}
