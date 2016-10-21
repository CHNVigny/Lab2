package po;

import java.sql.Date;
import javax.xml.crypto.Data;

public class book {
	private String isbn;
	private String title;
	private int authorid;
	private String publisher;
	private String publishdate;
	private String price;
	private String author;
	private int authorAge;
	private String authorCountry;
	
	public book() {
		// TODO Auto-generated constructor stub
	}
	public int getAuthorAge() {
		return authorAge;
	}
	public void setAuthorAge(int authorAge) {
		this.authorAge = authorAge;
	}
	public String getAuthorCountry() {
		return authorCountry;
	}
	public void setAuthorCountry(String authorCountry) {
		this.authorCountry = authorCountry;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getAuthorid() {
		return authorid;
	}
	public void setAuthorid(int authorid) {
		this.authorid = authorid;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	/*
	public book(String isbn,String title,int authorid,String publisher,String publishdate,String price)
	{
		super();
		this.isbn=isbn;
		this.title=title;
		this.authorid=authorid;
		this.publisher=publisher;
		this.publishdate=publishdate;
		this.price=price;
	}
	public book(){
		
	}*/
}
