package com.spring.mvc.project.repository;

import java.util.List;

import com.spring.mvc.project.domain.Category;

public interface CategoryRepository {

	/**
	 * 根据id分类的信息
	 * @param id
	 * @return
	 */
	public Category find(String id);

	/**
	 * 查询该类别是否存在指定字段的字段的指定值
	 * @param fieldName 字段
	 * @param fieldValue 字段值
	 * @return
	 */
	public boolean exist(String fieldName, String fieldValue);

	/**
	 * 添加新的类别
	 * @param category
	 * @return
	 */
	public boolean add(Category category);

	/**
	 * 更新新的类别
	 * @param category
	 * @return
	 */
	public void update(Category category);

	/**
	 * 更新类别信息
	 * @param fieldName
	 * @param fieldValue
	 * @param id
	 * @return
	 */
	public boolean update(String fieldName, Object fieldValue, String id);

	/**
	 * 查询地区类别列表
	 * @param provinceCode
	 * @param keyword
	 * @param pageIndex
	 * @param pageSize
	 * @return
	 */
	public List<Category> findList(String categoryCode, int hot, int enable, String keyword, int pageIndex, int pageSize);

	/**
	 * 查询列表数目
	 * @param provinceCode
	 * @param keyword
	 * @return
	 */
	public int findCount(String categoryCode, int hot, int enable, String keyword);

}
