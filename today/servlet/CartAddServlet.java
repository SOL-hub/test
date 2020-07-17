package home.servlet.item;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.CartDao;
import home.beans.dao.ItemDao;
import home.beans.dto.CartDto;
import home.beans.dto.ItemDto;
import home.beans.dto.MemberDto;

@WebServlet(urlPatterns = "/member/cart_add.do")
public class CartAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			
//			장바구니 추가 메소드
			
			req.setCharacterEncoding("UTF-8");
			MemberDto mdto = (MemberDto)req.getSession().getAttribute("userinfo");
			ItemDto idto=(ItemDto)req.getSession().getAttribute("iteminfo");
			int member_no = mdto.getMember_no();
			int item_no = idto.getItem_no();
			
			CartDto cdto = new CartDto();
			cdto.setCart_item_name(item_no);
			cdto.setCart_member(member_no);
			
			CartDao cdao = new CartDao();
			List<CartDto> list = cdao.getList(member_no);		
			
			
			
			
			
//			if(list.isEmpty() && !list.contains(cdto.getCart_item_name())) {
//				
				cdao.cart_add(cdto);
//			}
			
//			else {
//				System.out.println("ddd");
//			}
//			
			
			resp.sendRedirect("itemInfo.jsp");
				
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
