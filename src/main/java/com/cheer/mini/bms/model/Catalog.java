package com.cheer.mini.bms.model;

import java.io.Serializable;

/*
 * jipei
 * */

public class Catalog implements Serializable{
	
	private String catalogId;
	private String catalogName;
	
	
	public String getCatalogId() {
		return catalogId;
	}
	public void setCatalogId(String catalogId) {
		this.catalogId = catalogId;
	}
	
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	
	
	

}
