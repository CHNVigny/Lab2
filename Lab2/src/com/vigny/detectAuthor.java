package com.vigny;

import database.DetectAuthor;
import com.opensymphony.xwork2.ActionSupport;
public class detectAuthor extends ActionSupport{

	
	private String name;
	public String excute() throws Exception
	{
		
		int i=0;
		try{
			i=DetectAuthor.detectAuthor1(name);
			if(i==1) return "success";
			else return "error";
		}catch (Exception e){
			e.printStackTrace();
			return "error";
		}
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
}