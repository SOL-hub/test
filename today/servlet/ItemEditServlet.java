package home.servlet.item;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.ItemDao;
import home.beans.dto.ItemDto;
@WebServlet(urlPatterns = "/member/shopedit.do")
public class ItemEditServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		try {
			ItemDto idto = new ItemDto();
			idto.setItem_name(req.getParameter("item_name"));
			idto.setItem_price(Integer.parseInt(req.getParameter("item_price")));
			idto.setItem_stock(Integer.parseInt(req.getParameter("item_stock")));
			idto.setItem_info(req.getParameter("item_info"));
			idto.setItem_no(Integer.parseInt(req.getParameter("item_no")));
			ItemDao idao = new ItemDao();
			idao.edit(idto);
			
			resp.sendRedirect("itemInfo.jsp?item_no="+idto.getItem_no());
			
		} catch (Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
