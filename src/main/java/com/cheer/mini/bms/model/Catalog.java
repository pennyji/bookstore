package com.cheer.mini.bms.model;

import java.io.Serializable;

/*
 * jipei
 * */

@SuppressWarnings("serial")
public class Catalog implements Serializable{
	
	private String catalogid;
	private String catalogname;
	
	
	
	
	public String getCatalogid() {
		return catalogid;
	}
	public void setCatalogid(String catalogid) {
		this.catalogid = catalogid;
	}
	public String getCatalogname() {
		return catalogname;
	}
	public void setCatalogname(String catalogname) {
		this.catalogname = catalogname;
	}
	
	
	
	

}
