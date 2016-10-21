package com.vigny;

import java.io.UnsupportedEncodingException;
import java.sql.SQLException;

import com.opensymphony.xwork2.ActionSupport;

import database.AddAuthor;
import database.AddBook;
import database.DetectAuthor;
import database.UpdateBook;

public class updateBook extends ActionSupport {
	private String isbn;
	private String title;
	private String publisher;
	private String publishdate;
	private String price;
	private String name;
	private int age;
	private String country;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
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
	public void setCountry(String country) {
		this.country = country;
	}
	public String set(){
		return "success";
	}
	public String update() throws UnsupportedEncodingException, SQLException{
		int i=0;
		int authorid=0;
		i=DetectAuthor.detectAuthor3(name, age, country);
		if(i==0){
			AddAuthor.addAuthor(name, age, country);
		}
		authorid=AddAuthor.getAuthorid(name, age, country);
		i=UpdateBook.updateBook(isbn, authorid, publisher, publishdate, price);
		if(i==1) return "success";
		else return "error";
	}
}
