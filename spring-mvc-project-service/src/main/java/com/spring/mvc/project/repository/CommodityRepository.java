package com.spring.mvc.project.repository;

import java.util.List;

import com.spring.mvc.project.domain.CommodityInfo;

public interface CommodityRepository {

	/**
	 * 添加商品
	 * @param CommodityInfo
	 * @return
	 */
	public boolean add(CommodityInfo commodity);

	/**
	 * 更新商品信息
	 * @param CommodityInfo
	 */
	public void update(CommodityInfo commodity);

	/**
	 * 更新商品的某些字段的信息
	 * @param id
	 * @param fieldName
	 * @param fieldValue
	 */
	public boolean update(String paramter, String id);

	/**
	 * 删除商品
	 * @param CommodityInfo
	 */
	public void delete(CommodityInfo commodity);

	/**
	 * 通过商品的id，查询商品的信息
	 * @param id
	 * @return
	 */
	public CommodityInfo findById(String id);

	/**
	 * 通过商品的id,查询商品的信息
	 * @param id
	 * @return
	 */
	public Object[] find(String id);

	/**
	 * 根据条件查询商品列表
	 * @param category 类别
	 * @param status 状态，在售或下架
	 * @param recommend 是否在推广
	 * @param used 是否是二手
	 * @param pageIndex 页码数
	 * @param pageSize 每页显示的条目数
	 * @return List<Object[]>
	 */
	public List<Object[]> findList(String username, String categoryCode, String areaCode, String schoolCode,
			int status, int recommend, int used, String keyword, int pageIndex, int pageSize);

	/**
	 * 根据条件查询商品数目
	 * @param category 类别
	 * @param status 状态，在售或下架
	 * @param recommend 是否在推广
	 * @param used 是否是二手
	 * @param pageSize 每页显示的条目数
	 * @return int
	 */
	public int findCount(String username, String categoryCode, String areaCode, String schoolCode, int status,
			int recommend, int used, String keyword);

	/**
	 * 根据条件查询商品列表（导出用）
	 * @param category 类别
	 * @param status 状态，在售或下架
	 * @param recommend 是否在推广
	 * @param used 是否是二手
	 * @return List<CommodityInfo>
	 */
	public List<CommodityInfo> findAllList(String username, String categoryCode, String areaCode, String schoolCode,
			int status, int recommend, int used, String keyword, int pageSize, int pageIndex);

	/**
	 * 增加浏览次数
	 * @param id
	 * @return
	 */
	public boolean addViews(String id);
}
