package home.beans.dto;

import java.sql.ResultSet;
import java.sql.SQLException;

public class ItemDto {
	private int item_no;
	private String item_name;
	private int item_price;
	
	private String item_type;
	private String item_info;
	private int item_stock;
	private String item_image;
	private String item_time;
	private String item_kingtype;
	
	public ItemDto() {
		super();
	}
 


	public ItemDto(ResultSet rs) throws SQLException {
		
		this.setItem_no(rs.getInt("item_no"));
		this.setItem_name(rs.getString("item_name"));
		this.setItem_price(rs.getInt("item_price"));
		this.setItem_type(rs.getString("item_kingtype"));
		this.setItem_type(rs.getString("item_type"));
		this.setItem_info(rs.getString("item_info"));
		this.setItem_stock(rs.getInt("item_stock"));
		this.setItem_image(rs.getString("item_image"));
		this.setItem_time(rs.getString("item_time"));
		this.setItem_kingtype(rs.getString("item_kingtype"));
	}

	public String getItem_kingtype() {
		return item_kingtype;
	}

	public void setItem_kingtype(String item_kingtype) {
		this.item_kingtype = item_kingtype;
	}

	public int getItem_no() {
		return item_no;
	}

	public void setItem_no(int item_no) {
		this.item_no = item_no;
	}

	public String getItem_name() {
		return item_name;
	}

	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}

	public int getItem_price() {
		return item_price;
	}

	public void setItem_price(int item_price) {
		this.item_price = item_price;
	}

	public String getItem_type() {
		return item_type;
	}

	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}

	public String getItem_info() {
		return item_info;
	}

	public void setItem_info(String item_info) {
		this.item_info = item_info;
	}

	public int getItem_stock() {
		return item_stock;
	}

	public void setItem_stock(int item_stock) {
		this.item_stock = item_stock;
	}

	public String getItem_image() {
		return item_image;
	}

	public void setItem_image(String item_image) {
		this.item_image = item_image;
	}

	public String getItem_time() {
		return item_time;
	}

	public void setItem_time(String item_time) {
		this.item_time = item_time;
	}

	
}

