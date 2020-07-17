package home.servlet.item;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import home.beans.dao.ItemDao;
import home.beans.dto.ItemDto;

@WebServlet(urlPatterns="/shop/item_write.do")
public class ItemWriteServlet extends HttpServlet {
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		try {
			//목표:상품 등록 후 상품등록_상세페이지로
			//상품등록
			
			
			
			ItemDto idto = new ItemDto();
			idto.setItem_name(req.getParameter("item_name"));
			idto.setItem_price(Integer.parseInt(req.getParameter("item_price")));
			idto.setItem_type(req.getParameter("item_type"));
			idto.setItem_info(req.getParameter("item_info"));
			idto.setItem_image(req.getParameter("item_image"));
				
			if(req.getParameter("item_no") != null) {
				idto.setItem_no(Integer.parseInt(req.getParameter("item_no")));
			}
			
			ItemDao idao = new ItemDao();
			int item_no = idao.getSequence();
			idto.setItem_no(item_no);
			idao.write(idto);
			
			resp.sendRedirect("shop_content.jsp?item_no="+item_no);
		} catch (Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
		
	}
}
