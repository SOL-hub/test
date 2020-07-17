package home.servlet.item;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.CartDao;
import home.beans.dao.WishDao;

@WebServlet(urlPatterns = "/member/wish_del.do")
public class WishDeleteServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
			String[] wish_select_delete = req.getParameterValues("wish_no");
			WishDao wdao = new WishDao();
			
			if(wish_select_delete != null) {
				for(int i=0; i<wish_select_delete.length; i++) {
					int wish_no = Integer.parseInt(wish_select_delete[i]);
					wdao.wishDelete(wish_no);
				}
			}
			

			resp.sendRedirect("wishlist.jsp");
						
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
