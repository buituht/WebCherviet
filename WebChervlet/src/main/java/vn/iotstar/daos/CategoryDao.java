package vn.iotstar.daos;

import java.util.List;

import vn.iotstar.models.CategoryModel;

public interface CategoryDao {

	List<CategoryModel> getAll();

	CategoryModel get(int id);

	void delete(int id);

	void edit(CategoryModel category);

	void insert(CategoryModel category);
	
	CategoryModel findByCategoryName(String cate_name);
	
	


	
}
