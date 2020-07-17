package home.servlet.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.CartDao;

@WebServlet(urlPatterns = "/member/barket_delete.do")
public class CartDeleteServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			
			String[] cart_select_delete = req.getParameterValues("cart_no");
			CartDao cdao = new CartDao();
			
			if(cart_select_delete != null) {
				for(int i=0; i<cart_select_delete.length; i++) {
					int cart_no = Integer.parseInt(cart_select_delete[i]);
					cdao.cartDelete(cart_no);
				}
			}
			

			resp.sendRedirect("shopBarket3.jsp");
						
		}
		
		catch (Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}

	}
}
