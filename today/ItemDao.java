package home.beans.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import home.beans.dto.BoardDto;
import home.beans.dto.ItemDto;
import home.beans.dto.MemberDto;

public class ItemDao {

//	context.xml에서 관리하는 자원 객체를 참조할 수 있도록 연결 코드 구현
private static DataSource src;
	
	//static 변수의 초기화가 복잡할 경우에 사용할 수 있는 static 전용 구문
	static {
//		src=context.xml에서 관리하는 자원의 정보;
		try {
			Context ctx = new InitialContext();
			Context env = (Context) ctx.lookup("java:/comp/env");//Context 설정 찾아라
			src = (DataSource) env.lookup("jdbc/oracle");
		} 
		catch (NamingException e) {			
			e.printStackTrace();
		}
	}
	


	public Connection getConnection() throws Exception{		

//		Class.forName("oracle.jdbc.OracleDriver");
//		
//		Connection con = DriverManager.getConnection(
//				"jdbc:oracle:thin:@localhost:1521:xe" , "C##PROJECT","C##PROJECT");
//				
//		return con;//동휘(수정_이유:product_bed_list적용이안되서)(결과:이렇게바꿧는데 됨)
		return src.getConnection();

	}
	
	//상품 검색 메소드
	//이름 : getList
	//결과 : 상품 목록 == search<ProductDto>
	//준비물 : X
	public List<ItemDto> search(String keyword) throws Exception {
		Connection con = getConnection();
		
		String sql = "SELECT * FROM item WHERE instr(item_name,?)>0 ORDER BY item_no ASC";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, keyword);
		ResultSet rs = ps.executeQuery();
	
		List<ItemDto> list = new ArrayList<>();//데이터들을 보관할 목록 저장소 생성
		while(rs.next()) {//데이터 개수만큼 반복하도록 지시
			ItemDto idto = new ItemDto(rs);			
			list.add(idto);//준비된 저장소에 옮겨담은 데이터 객체를 추가한다
		}
		con.close();	
		//연결이 종료된 후 복제한 저장소를 반환
		return list;
	}
	
	// 목록 메소드
	public List<ItemDto> getList() throws Exception {
		Connection con = getConnection();
		
		String sql = "SELECT * FROM item ORDER BY item_no ASC";
		
		PreparedStatement ps = con.prepareStatement(sql);
		
		ResultSet rs = ps.executeQuery();
		
		List<ItemDto> list = new ArrayList<>();
		while(rs.next()) {
			
			ItemDto idto = new ItemDto(rs);
			list.add(idto);
		}
		
		con.close();
		
		return list;	
	}
	
//	진빈(아이템 단일조회)
	
	   public ItemDto item_get(int item_no)throws Exception{
	      
	      Connection con = getConnection();
	      String sql = "select * from item where item_no=?";
	      PreparedStatement ps = con.prepareStatement(sql);
	      
	      ps.setInt(1, item_no);
	      ResultSet rs = ps.executeQuery();
	      
	      ItemDto idto;
	      if(rs.next()) {
	         idto = new ItemDto(rs);
	         
	      }
	      else {
	         idto = null;
	      }
	      
	      con.close();
	      
	      return idto;
	      
	   }
	   
	   
		//(동휘)등록
		public void write(ItemDto idto) throws Exception {
			Connection con = getConnection();

			String sql = 
					"insert into item values(item_seq.nextval,?,?,?,?,?,?,null,sysdate)";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, idto.getItem_name());
			ps.setInt(2, idto.getItem_price());
			ps.setString(3, idto.getItem_kingtype());
			ps.setString(4, idto.getItem_type());
			ps.setString(5, idto.getItem_info());
			ps.setInt(6, idto.getItem_stock());
			ps.execute();

			con.close();
		}
	   
	///(동휘)시퀀스

			public int getSequence() throws Exception{
				Connection con = getConnection();

				String sql = "SELECT item_seq.nextval FROM dual";
				PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				rs.next();
				int seq = rs.getInt(1);

				con.close();

				return seq;
			}
			
			//게시글 삭제
			public void delete(int item_no) throws Exception {
				Connection con = getConnection();

				String sql = "DELETE item WHERE item_no = ?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, item_no);
				ps.execute();

				con.close();
			}
		//수정메소드
		public void edit(ItemDto idto)throws Exception{
			Connection con = getConnection();
			String sql = "UPDATE item SET "
					+ "item_name=?, item_price=?, item_info=?,item_stock=? "
					+ "where item_no=?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, idto.getItem_name());
			ps.setInt(2, idto.getItem_price());
			ps.setString(3, idto.getItem_info());
			ps.setInt(4, idto.getItem_stock());
			ps.setInt(5, idto.getItem_no());
			ps.execute();

			con.close();
		}
	 //(동휘)개수 조회 메소드
		public int getCount() throws Exception{
			Connection con = getConnection();
			
			String sql = "SELECT count(*) FROM item";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			
			con.close();
			
			return count;
		}
	   public int getCount(String type, String keyword) throws Exception{
			Connection con = getConnection();
			
			String sql = "SELECT count(*) FROM item WHERE instr(#1, ?) > 0";
			sql = sql.replace("#1", type);
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, keyword);
			ResultSet rs = ps.executeQuery();
			rs.next();
			int count = rs.getInt(1);
			
			con.close();
			
			return count;
		}
	 //동휘_목록메소드2_5_모두조회
	 		public List<ItemDto> getList5(int start, int finish) throws Exception{
	 			Connection con = getConnection();
	 			
	 			//결과의 순서를 정해준다
	 			String sql = "SELECT * FROM("//T의 모든 항목
						+ "SELECT ROWNUM rn, T.* FROM("
						+ "SELECT * FROM item"
					+ ")T"//T의 모든 항목
			+ ") WHERE rn BETWEEN ? and ?";
	 			PreparedStatement ps = con.prepareStatement(sql);
	 			ps.setInt(1, start);
	 			ps.setInt(2, finish);
	 			ResultSet rs = ps.executeQuery();
	 			
	 			List<ItemDto> list = new ArrayList<>();
	 			while(rs.next()) {
	 				ItemDto idto = new ItemDto(rs);
	 				list.add(idto);
	 			}
	 			
	 			con.close();
	 			return list;
	 		}
	 //동휘_목록메소드2_1
		public List<ItemDto> getList1(int start, int finish) throws Exception{
			Connection con = getConnection();
			
			//결과의 순서를 정해준다
			String sql = 
					"SELECT * FROM("//T의 모든 항목
						+ "SELECT ROWNUM rn, T.* FROM("
							+ "SELECT * FROM item WHERE ITEM_TYPE='욕실'"
						+ ")T"//T의 모든 항목
				+ ") WHERE rn BETWEEN ? and ?";
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, finish);
			ResultSet rs = ps.executeQuery();
			
			List<ItemDto> list = new ArrayList<>();
			while(rs.next()) {
				ItemDto idto = new ItemDto(rs);
				list.add(idto);
			}
			
			con.close();
			return list;
		}
		//동휘_목록메소드2_2
				public List<ItemDto> getList2(int start, int finish) throws Exception{
					Connection con = getConnection();
					
					//결과의 순서를 정해준다
					String sql = 
							"SELECT * FROM("//T의 모든 항목
								+ "SELECT ROWNUM rn, T.* FROM("
									+ "SELECT * FROM item WHERE ITEM_TYPE='책상'"
								+ ")T"//T의 모든 항목
						+ ") WHERE rn BETWEEN ? and ?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, start);
					ps.setInt(2, finish);
					ResultSet rs = ps.executeQuery();
					
					List<ItemDto> list = new ArrayList<>();
					while(rs.next()) {
						ItemDto idto = new ItemDto(rs);
						list.add(idto);
					}
					
					con.close();
					return list;
				}
				//동휘_목록메소드2_3
				public List<ItemDto> getList3(int start, int finish) throws Exception{
					Connection con = getConnection();
					
					//결과의 순서를 정해준다
					String sql = 
							"SELECT * FROM("//T의 모든 항목
								+ "SELECT ROWNUM rn, T.* FROM("
									+ "SELECT * FROM item WHERE ITEM_TYPE='소파'"
								+ ")T"//T의 모든 항목
						+ ") WHERE rn BETWEEN ? and ?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, start);
					ps.setInt(2, finish);
					ResultSet rs = ps.executeQuery();
					
					List<ItemDto> list = new ArrayList<>();
					while(rs.next()) {
						ItemDto idto = new ItemDto(rs);
						list.add(idto);
					}
					
					con.close();
					return list;
				}
				//동휘_목록메소드2_4
				public List<ItemDto> getList4(int start, int finish) throws Exception{
					Connection con = getConnection();
					
					//결과의 순서를 정해준다
					String sql = 
							"SELECT * FROM("//T의 모든 항목
								+ "SELECT ROWNUM rn, T.* FROM("
									+ "SELECT * FROM item WHERE ITEM_TYPE='의자'"
								+ ")T"//T의 모든 항목
						+ ") WHERE rn BETWEEN ? and ?";
					PreparedStatement ps = con.prepareStatement(sql);
					ps.setInt(1, start);
					ps.setInt(2, finish);
					ResultSet rs = ps.executeQuery();
					
					List<ItemDto> list = new ArrayList<>();
					while(rs.next()) {
						ItemDto idto = new ItemDto(rs);
						list.add(idto);
					}
					
					con.close();
					return list;
				}
}