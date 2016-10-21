package com.vigny;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;
import database.DetectAuthor;
import database.AddAuthor;
import database.AddBook;

public class addBook extends ActionSupport {
	private String isbn;
	private String title;
	private String publisher;
	private String publishdate;
	private String price;
	private String name;
	private int age;
	private String country;
	public String getName() {
		return name;
	}
	public void setName(String name) throws UnsupportedEncodingException {
		//name=new String(name.getBytes("ISO-8859-1"),"UTF-8");
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) throws UnsupportedEncodingException {
		//country=new String(country.getBytes("ISO-8859-1"),"UTF-8");
		this.country = country;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) throws UnsupportedEncodingException {
		//isbn=new String(isbn.getBytes("ISO-8859-1"),"UTF-8");
		this.isbn = isbn;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) throws UnsupportedEncodingException {
		//title=new String(title.getBytes("ISO-8859-1"),"UTF-8");
		this.title = title;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) throws UnsupportedEncodingException {
		//publisher=new String(publisher.getBytes("ISO-8859-1"),"UTF-8");
		this.publisher = publisher;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) throws UnsupportedEncodingException {
		//publishdate=new String(publishdate.getBytes("ISO-8859-1"),"UTF-8");
		this.publishdate = publishdate;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) throws UnsupportedEncodingException {
		//price=new String(price.getBytes("ISO-8859-1"),"UTF-8");
		this.price = price;
	}
	
	public String addBook() throws SQLException, UnsupportedEncodingException{
		int i=0;
		int authorid=0;
		i=DetectAuthor.detectAuthor3(name, age, country);
		if(i==0){
			AddAuthor.addAuthor(name, age, country);
		}
		authorid=AddAuthor.getAuthorid(name, age, country);
		i=AddBook.addBook(isbn, title, authorid, publisher, publishdate, price);
		if(i==1) return "success";
		else if(i==0) return "error";
		return "input";
	}
}
