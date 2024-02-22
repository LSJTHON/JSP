package dto;

import java.io.Serializable;

public class Product implements Serializable{
	private static final long serialVersionUID = -4274700572038677000L;

	private String productId; //상품 아이디
	private String pname; //상품명
	private Integer unitPrice; //상품 가격
	private String description; //상품 설명
	private String manufaturer; //제조사
	private String category; //분류
	private long unitInStrock; //재고 수
	private String condition; // 신상품 or 중고품 or  재생품
	
	
	public Product() {
		super();
	}
	public Product(String productId, String pname, Integer unitPrice) {
		this.productId = productId;
		this.pname = pname;
		this.unitPrice = unitPrice;
	}
	public String getProductId() {return productId;}
	
	public void setProductId(String productId) {this.productId = productId;}
	
	public String getPname() {return pname;}
	
	public void setPname(String pname) {this.pname = pname;}
	
	public Integer getUnitPrice() {return unitPrice;}
	
	public void setUnitPrice(Integer unitPrice) {this.unitPrice = unitPrice;}
	
	public String getDescription() {return description;}
	
	public void setDescription(String description) {this.description = description;}
	
	public String getManufaturer() {return manufaturer;}
	
	public void setManufaturer(String manufaturer) {this.manufaturer = manufaturer;}
	
	public String getCategory() {return category;}
	
	public void setCategory(String category) {this.category = category;}
	
	public long getUnitInStrock() {return unitInStrock;}
	
	public void setUnitInStrock(long unitInStrock) {this.unitInStrock = unitInStrock;}
	
	public String getCondition() {return condition;}
	
	public void setCondition(String condition) {this.condition = condition;}
	
	
	
}
