package dto;

import java.io.Serializable;

public class Art implements Serializable{
	
	private static final long serialVersionUID = -4274700572038677000L;
	
	private String artId;			//작품 아이디
	private String aname;			//작품명
	private String description;		//작품 설명
	private String arter;			//작가
	private String category;		//분류
	

	public Art() {
		super();
	}
	
	public Product(String artId, String aname) {
		this.artId = artId;
		this.aname = aname;
	}
	public String getArtId() {
		return artId;
	}
	public String getAname() {
		return aname;
	}
	public void setAname(String aname) {
		this.aname = aname;
	}
	public void setArtId(String artId) {
		this.artId = artId;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getArter() {
		return arter;
	}
	public void setArter(String arter) {
		this.arter = arter;
	}
	public String getCategory() {
		return category;
	}
}
