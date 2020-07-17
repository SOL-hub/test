package home.servlet.item;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import home.beans.dao.MemberDao;
import home.beans.dao.WishDao;
import home.beans.dto.CartDto;
import home.beans.dto.ItemDto;
import home.beans.dto.MemberDto;
import home.beans.dto.WishDto;

@WebServlet(urlPatterns = "/member/wish_add.do")
public class WishAddServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			req.setCharacterEncoding("UTF-8");
			MemberDto mdto = (MemberDto)req.getSession().getAttribute("userinfo");
			ItemDto idto = (ItemDto)req.getSession().getAttribute("iteminfo");
			int member_no = mdto.getMember_no();
			int item_no = idto.getItem_no();
			
			WishDto wdto = new WishDto();
			wdto.setWish_item_name(item_no);
			wdto.setWish_member(member_no);
			
			WishDao wdao = new WishDao();
			
			wdao.wish_add(wdto);

			
			resp.sendRedirect("itemInfo.jsp");
			
		}
		catch(Exception e) {
			e.printStackTrace();
			resp.sendError(500);
		}
	}
}
