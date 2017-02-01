package dao.domain;

import java.util.List;

import dao.tables.Category;

public interface CategoryDao {
	public List<?> showCategoryName();
	public List<?> showAll();
	public void addCategory(Category category);
	public Category viewCategory(int id);
	public void updateCategory(Category category);
}
