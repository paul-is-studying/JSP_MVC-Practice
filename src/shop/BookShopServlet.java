package shop;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookShopServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html; charset=EUC-KR");
		req.setCharacterEncoding("EUC-KR");
		
		//String data = req.getParameter("book");
		//PrintWriter pw = resp.getWriter();
		//pw.println("<h2>�����Ͻ� ���� : " + data + "</h2>");
		HttpSession session = req.getSession();
		List<BookDTO> list = (List)session.getAttribute("cart");
		String cmd = req.getParameter("command");
		if (cmd.equals("CHK")) {
			Hashtable<String, BookDTO> ht = new Hashtable<>();
			for(BookDTO dto : list) {
				if (ht.containsKey(dto.getTitle())) {
					BookDTO dto2 = ht.get(dto.getTitle());
					dto2.setQty(dto.getQty() + dto2.getQty());
				}else {
					ht.put(dto.getTitle(), dto);
				}
			}
			req.setAttribute("result", ht);
			RequestDispatcher view = req.getRequestDispatcher("result2.jsp");
			view.forward(req, resp);
		}else {
			if (cmd.equals("ADD")) {
				if (list==null) list = new ArrayList<>();
				BookDTO dto = getBook(req);
				list.add(dto);
			}else if (cmd.equals("DEL")){
				String idx = req.getParameter("idx");
				list.remove(Integer.parseInt(idx));
			}
			session.setAttribute("cart", list);
			RequestDispatcher view = req.getRequestDispatcher("bookShop.jsp");
			view.forward(req, resp);
		}
		/*
		PrintWriter pw = resp.getWriter();
		pw.println("������ : " + dto.getTitle() + "<br>");
		pw.println("������ : " + dto.getAuthor() + "<br>");
		pw.println("�ǸŰ� : " + dto.getPrice() + "<br>");
		pw.println("���� : " + dto.getQty()+"<br>");
		*/
	}
	
	public BookDTO getBook(HttpServletRequest req) {
		BookDTO dto = new BookDTO();
		String data = req.getParameter("book");
		String qty = req.getParameter("qty");
		//StringTokenizer, String�� split(), Scanner
		Scanner scan = new Scanner(data).useDelimiter("\\s*/\\s*");
		// "/"�� �������� �����͸� �����µ�, /�տ� ������ 0���̻�, �ڿ� ������ 0���̻� 
		dto.setTitle(scan.next());
		dto.setAuthor(scan.next());
		dto.setPrice(scan.nextInt());
		dto.setQty(Integer.parseInt(qty));
		return dto;
	}
}









