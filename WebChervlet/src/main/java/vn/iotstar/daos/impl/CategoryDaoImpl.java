package vn.iotstar.daos.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import vn.iotstar.daos.CategoryDao;
import vn.iotstar.jdbc.DBConnection;
import vn.iotstar.models.CategoryModel;

public class CategoryDaoImpl implements CategoryDao {

	public Connection conn = null;
	public PreparedStatement ps = null;
	public ResultSet rs = null;

	@Override
	public CategoryModel findByCategoryName(String cate_name) {
		String sql = "SELECT * FROM Category WHERE cate_name = ?";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, cate_name);

			rs = ps.executeQuery();

			if (rs.next()) {
				CategoryModel category = new CategoryModel();
				category.setCateId(rs.getInt("cate_id"));
				category.setCateName(rs.getString("cate_name"));
				category.setIcons(rs.getString("icons"));
				return category;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public void insert(CategoryModel category) {
		String sql = "INSERT INTO category(cate_name, icons) VALUES (?, ?)";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setString(1, category.getCateName());
			ps.setString(2, category.getIcons());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void edit(CategoryModel category) {
		String query = "UPDATE category SET cate_name = ?, icons = ? WHERE cate_id = ?";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(query);
			ps.setString(1, category.getCateName());
			ps.setString(2, category.getIcons());
			ps.setInt(3, category.getCateId());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void delete(int id) {
		String sql = "DELETE FROM category WHERE cate_id = ?";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public CategoryModel get(int id) {
		String sql = "SELECT * FROM category WHERE cate_id = ?";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			if (rs.next()) {
				CategoryModel category = new CategoryModel();
				category.setCateId(rs.getInt("cate_id"));
				category.setCateName(rs.getString("cate_name"));
				category.setIcons(rs.getString("icons"));
				return category;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return null;
	}

	@Override
	public List<CategoryModel> getAll() {
		List<CategoryModel> categories = new ArrayList<>();
		String sql = "SELECT * FROM Category";
		try {
			conn = DBConnection.getConnection();
			ps = conn.prepareStatement(sql);
			System.out.println("Executing SQL category: " + sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				CategoryModel category = new CategoryModel();
				category.setCateId(rs.getInt("cate_id"));
				category.setCateName(rs.getString("cate_name"));
				category.setIcons(rs.getString("icons"));
				categories.add(category);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) rs.close();
				if (ps != null) ps.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return categories;
	}

}
