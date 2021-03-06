package com.spring.mvc.project.domain;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.util.StringUtils;

/**
 * 地区代码信息
 */
@Entity
@Table(name = "AREA")
public class Area implements Serializable {

	private static final long serialVersionUID = 7756408880111796698L;

	@Id
	@Column(name = "ID", length = 128)
	@GenericGenerator(name = "generator", strategy = "uuid")
	@GeneratedValue(generator = "generator")
	private String id;
	/**
	 * 地区代码
	 */
	@NotBlank
	@Column(name = "CODE", length = 6, nullable = false, updatable = false)
	private String code;
	/**
	 * 地区名称
	 */
	@NotBlank
	@Length(min = 2, max = 32)
	@Column(name = "NAME", length = 32, nullable = false)
	private String name;
	/**
	 * 显示名称
	 */
	@NotBlank
	@Length(min = 2, max = 32)
	@Column(name = "DISPLAY", length = 32, nullable = false)
	private String display;
	/**
	 * 地区类型代码：直辖市1; 省会城市2; 计划单列市3; 地级市4; 县级市5; 县6
	 */
	@NotBlank
	@Column(name = "TYPE_CODE", length = 1, nullable = false)
	private String typeCode;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = StringUtils.trimAllWhitespace(code);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = StringUtils.trimAllWhitespace(name);
	}

	public String getDisplay() {
		return display;
	}

	public void setDisplay(String display) {
		this.display = StringUtils.trimAllWhitespace(display);
	}

	public String getTypeCode() {
		return typeCode;
	}

	public void setTypeCode(String typeCode) {
		this.typeCode = StringUtils.trimAllWhitespace(typeCode);
	}

	/**
	 * 地区类型名称：直辖市1; 省会城市2; 计划单列市3; 地级市4; 县级市5; 县6
	 */
	@Transient
	public String getTypeName() {
		switch (typeCode) {
		case "1":
			return "直辖市";
		case "2":
			return "省会城市";
		case "3":
			return "计划单列市";
		case "4":
			return "地级市";
		case "5":
			return "县级市";
		case "6":
			return "县";
		default:
			return typeCode;
		}
	}
}
