package home.servlet.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.ItemDao;
import home.beans.dto.CartDto;
import home.beans.dto.ItemDto;
import home.beans.dto.MemberDto;

@WebServlet(urlPatterns = "/member/item_info.do")
public class ItemInfoServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
//			아이템 상세 페이지 들어가는코드
			
			req.setCharacterEncoding("UTF-8");
			int item_no = Integer.parseInt(req.getParameter("item_no"));
			
			ItemDao idao = new ItemDao();
			ItemDto idto = idao.item_get(item_no);
		
			req.getSession().setAttribute("iteminfo", idto);
			
			resp.sendRedirect("itemInfo.jsp");
			
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
