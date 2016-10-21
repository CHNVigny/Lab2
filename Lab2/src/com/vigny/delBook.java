package com.vigny;
import java.util.Map;
import database.DeleteBook;
import com.opensymphony.xwork2.ActionSupport;
public class delBook extends ActionSupport{
	
	private String isbn;
	private String name;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String excute() throws Exception
	{
		int i=0;
		DeleteBook del=new DeleteBook();
		i=del.delete(isbn);
		if(i!=0)
			return SUCCESS;
		else
			return ERROR;
	}
}
