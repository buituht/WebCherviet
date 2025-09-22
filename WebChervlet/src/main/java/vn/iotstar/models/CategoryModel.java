package vn.iotstar.models;

import java.io.Serializable;


public class CategoryModel implements Serializable{
	
		/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		
	    private int cate_id;
	    private String cate_name;
	    private String icons;

	    public CategoryModel() {
	    }

	    public CategoryModel(String cate_name) {
	        this.cate_name = cate_name;
	    }

	    public CategoryModel(int cate_id, String cate_name,String icons) {
	        this.cate_id = cate_id;
	        this.cate_name = cate_name;
	        this.icons = icons;
	    }

	    // Getters and Setters
	    public int getCateId() {
	        return cate_id;
	    }

	    public void setCateId(int cate_id) {
	        this.cate_id = cate_id;
	    }

	    public String getCateName() {
	        return cate_name;
	    }

	    public void setCateName(String cate_name) {
	        this.cate_name = cate_name;
	    }
	    public String getIcons() {
	        return icons;
	    }

	    public void setIcons(String icons) {
	        this.icons = icons;
	    }
	    
	  //Overide một số phương thức của java
		
		@Override
		public String toString() {
			return "CategoryModel [cate_id=" + cate_id + ", cate_name=" + cate_name + ", icons=" + icons + "]";
		}
		
	}
