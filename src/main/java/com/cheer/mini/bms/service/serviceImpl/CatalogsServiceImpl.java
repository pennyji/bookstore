package com.cheer.mini.bms.service.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cheer.mini.bms.dao.CatalogDao;
import com.cheer.mini.bms.model.Catalog;
import com.cheer.mini.bms.service.CatalogsService;

@Service("catalogsServiceImpl")
public class CatalogsServiceImpl implements CatalogsService {
    @Autowired
	private CatalogDao catalogDao;
	@Override
	public List<Catalog> getCatalogs() {
		// TODO Auto-generated method stub
		return catalogDao.getCatalogs();
	}

}
