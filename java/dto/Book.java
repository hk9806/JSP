package dto;

import java.io.Serializable;

public class Book implements Serializable{
	
	private static final long serialVersionUID = 5469485061642824811L;
	
	private String bookId; 		//도서ID
	private String name;  	    //도서명
	private int unitPrice;	    //가격
	private String author; 		//저자
	private String description; //설명
	private String publisher; 	//출판사
	private String category; 	//분류
	private long unitsInStock;  //재고개수
	private String releaseDate; //출판일
	private String condition;   //신제품 or 구제품 or 리퍼브제품
	
	public Book() {
		super();
	}

	public Book(String bookId, String name, int unitPrice) {
		super();
		this.bookId = bookId;
		this.name = name;
		this.unitPrice = unitPrice;
	}

	public String getBookId() {
		return bookId;
	}

	public String getName() {
		return name;
	}

	public int getUnitPrice() {
		return unitPrice;
	}

	public String getAuthor() {
		return author;
	}

	public String getDescription() {
		return description;
	}

	public String getPublisher() {
		return publisher;
	}

	public String getCategory() {
		return category;
	}

	public long getUnitsInStock() {
		return unitsInStock;
	}

	public String getReleaseDate() {
		return releaseDate;
	}

	public String getCondition() {
		return condition;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public void setName(String name) {
		this.name = name;
	}

	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public void setUnitsInStock(long unitsInStock) {
		this.unitsInStock = unitsInStock;
	}

	public void setReleaseDate(String releaseDate) {
		this.releaseDate = releaseDate;
	}

	public void setCondition(String condition) {
		this.condition = condition;
	}
	
	
}
