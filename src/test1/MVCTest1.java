package test1;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MVCTest1 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) 
															throws ServletException, IOException {
		resp.setContentType("text/html; charset=EUC-KR");
		
		String depart = req.getParameter("depart");
		DepartExpert de = new DepartExpert();
		List<String> list = de.getAdvice(depart);
		
		req.setAttribute("advice", list);
		
		RequestDispatcher view = req.getRequestDispatcher("result1.jsp");
		view.forward(req, resp);
		//PrintWriter pw = resp.getWriter();
		//for(String str : list) {
		//	pw.println("<h2>" + str +"</h2>");
		//	}
		//pw.println("<h2>여기까지 오면 성공!!</h2>");
	}

}








