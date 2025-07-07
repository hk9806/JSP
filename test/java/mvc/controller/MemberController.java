package mvc.controller;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import mvc.model.memberDAO;
import mvc.model.memberDTO;

public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());

		if (command.equals("/loginMember.do")) {
			loginMember(request, response);
		} else if (command.equals("/addMember.do")) {
			addMember(request, response);
		} else if (command.equals("/updateMember.do")) {
			updateMember(request, response);
		} else if (command.equals("/deleteMember.do")) {
			deleteMember(request, response);
		}else {
			response.sendRedirect("error.jsp");
		}
	}

	 private void loginMember(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {

	        String id = request.getParameter("id");
	        String password = request.getParameter("password");

	        // 입력값 유효성 검사
	        if (id == null || id.trim().isEmpty() || password == null || password.trim().isEmpty()) {
	            response.sendRedirect(request.getContextPath() + "/loginMember.jsp?error=1");
	            return;
	        }

	        id = id.trim();
	        password = password.trim();

	        System.out.println("[loginMember] ID: " + id);

	        memberDTO dto = new memberDTO();
	        dto.setId(id);
	        dto.setPassword(password);

	        String result = memberDAO.getInstance().loginmember(dto);

	        if (result != null) {
	            HttpSession session = request.getSession();
	            session.setAttribute("userId", result);
	            System.out.println("[loginMember] 로그인 성공: " + result);
	            response.sendRedirect(request.getContextPath() + "/member/resultMember.jsp?msg=2");
	        } else {
	            System.out.println("[loginMember] 로그인 실패");
	            response.sendRedirect(request.getContextPath() + "/loginMember.jsp?error=1");
	        }
	    }



	private void addMember(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		memberDTO dto = new memberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPassword(request.getParameter("password"));
		dto.setName(request.getParameter("name"));
		dto.setGender(request.getParameter("gender"));
		dto.setBirth(request.getParameter("birth"));
		dto.setMail(request.getParameter("mail"));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("address"));
		dto.setRegist_day(java.time.LocalDate.now().toString());

		memberDAO.getInstance().addmember(dto);
		response.sendRedirect(request.getContextPath()+"/member/resultMember.jsp?msg=1");
	}

	private void updateMember(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		memberDTO dto = new memberDTO();
		dto.setId(request.getParameter("id"));
		dto.setPassword(request.getParameter("password"));
		dto.setName(request.getParameter("name"));
		dto.setBirth(request.getParameter("birth"));
		dto.setMail(request.getParameter("mail"));
		dto.setPhone(request.getParameter("phone"));
		dto.setAddress(request.getParameter("address"));

		memberDAO.getInstance().updatemember(dto);
		response.sendRedirect(request.getContextPath()+"/member/resultMember.jsp?msg=3");
	}

	private void deleteMember(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");

		int result = memberDAO.getInstance().deletemember(id);

		if (result > 0) {
			HttpSession session = request.getSession(false);
			if (session != null)
				session.invalidate();
			response.sendRedirect(request.getContextPath()+"/member/resultMember.jsp?msg=4");
		} else {
			request.setAttribute("error", "회원 탈퇴 실패");
			request.getRequestDispatcher("/deleteMember.jsp").forward(request, response);
		}
	}
	
	
}
