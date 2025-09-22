package vn.iotstar.services;

import java.util.List;

import org.apache.catalina.User;


import vn.iotstar.daos.UserDao;
import vn.iotstar.daos.impl.UserDaoImpl;
import vn.iotstar.models.CategoryModel;
import vn.iotstar.services.impl.UserServiceImpl;

public interface CategoryService {
	
	

	CategoryModel findByUserName(String category_name);

	CategoryModel findByCategoryName(String cate_name);

	void insertCategory(CategoryModel category);

	  List<CategoryModel> getAll();

	  CategoryModel get(int int1);

	  void edit(CategoryModel category);
	  
	  // Thêm phương thức insert để có thể gọi từ Controller
	    void insert(CategoryModel category);
	    void delete(int id);
	    	

	
	


	
}


