package dto;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {
	private ArrayList<Product> listOfProducts = new ArrayList<Product>();
	
	
	public ProductRepository() {
		Product phone = new Product("P1234","iPhone 6s",800000);
		phone.setDescription("좋은거니까 그냥 사라");
		phone.setCategory("스마트폰");
		phone.setManufaturer("애플");
		phone.setUnitInStrock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235","LG PC 그램",1500000);
		notebook.setDescription("13.3인치 IPS 패널, 지려요");
		notebook.setCategory("노트북");
		notebook.setManufaturer("LG");
		notebook.setUnitInStrock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236","갤럭시 탭 S",900000);
		tablet.setDescription("제품 스펙 아주 죠습니다");
		tablet.setCategory("태블릿");
		tablet.setManufaturer("삼성");
		tablet.setUnitInStrock(1000);
		tablet.setCondition("Old");
		
		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
	}
	
	public ArrayList<Product> getAllProducts(){
		return listOfProducts;
	}
}
