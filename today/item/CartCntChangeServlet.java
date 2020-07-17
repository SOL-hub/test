package home.servlet.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.CartDao;
import home.beans.dto.CartDto;

@WebServlet(urlPatterns = "/member/cart_cnt_change.do")
public class CartCntChangeServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			CartDto cdto = new CartDto();
			cdto.setCart_cnt(Integer.parseInt(req.getParameter("cart_cnt")));
			cdto.setCart_no(Integer.parseInt(req.getParameter("cart_no")));
			
			CartDao cdao = new CartDao();
			cdao.cart_cnt_change(cdto.getCart_cnt(), cdto.getCart_no());
			
			resp.sendRedirect("shopBarket3.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
