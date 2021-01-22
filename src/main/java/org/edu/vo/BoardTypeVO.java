package org.edu.vo;

public class BoardTypeVO {
	private String baord_type;
	private String board_name;
	private Integer board_sun;
	
	@Override
	public String toString() {
		return "디버그용 BoardTypeVO [baord_type=" + baord_type + ", board_name=" + board_name + ", board_sun=" + board_sun
				+ "]";
	}
	
	
	public String getBaord_type() {
		return baord_type;
	}
	public void setBaord_type(String baord_type) {
		this.baord_type = baord_type;
	}
	public String getBoard_name() {
		return board_name;
	}
	public void setBoard_name(String board_name) {
		this.board_name = board_name;
	}
	public Integer getBoard_sun() {
		return board_sun;
	}
	public void setBoard_sun(Integer board_sun) {
		this.board_sun = board_sun;
	}
	
}

