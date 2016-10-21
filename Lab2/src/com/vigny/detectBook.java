package com.vigny;

import com.opensymphony.xwork2.ActionSupport;
import database.DetectBook;

public class detectBook extends ActionSupport {
	public String excute() throws Exception{
		int i=0;
		i=DetectBook.detectBook();
		if(i==1) return "success";
		else return "error";
	}
}
