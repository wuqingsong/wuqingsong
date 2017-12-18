package com.llbt.cms.tag;

import java.io.IOException;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.tagext.BodyTagSupport;

import org.springframework.util.StringUtils;

import com.llbt.cms.cache.SystemDictCache;
import com.llbt.cms.entity.SystemDict;
/**
 * 
 * @author wuqingsong
 *
 */
@SuppressWarnings("serial")
public class DictTag extends BodyTagSupport {
	private String controlType;
	private static final String CONTROL_TYPE_SELECT = "1";
	private static final String CONTROL_TYPE_TEXT = "2";

	@Override
	public int doStartTag() throws JspException {
		return EVAL_BODY_INCLUDE;
	}

	@Override
	public int doEndTag() throws JspException {
		try {
			switch (controlType) {
			case CONTROL_TYPE_SELECT:
				printSelectCtrl();
				break;
			case CONTROL_TYPE_TEXT:
				printString();
				break;
			default:
				break;
			}

		} catch (IOException ex) {
			throw new JspTagException("错误");
		}
		return EVAL_PAGE;
	}

	private void printString() throws IOException {
		pageContext.getOut().write(
				SystemDictCache.getDictName(dictKey, dictValue));
	}

	private void printSelectCtrl() throws IOException {
		StringBuffer results = new StringBuffer();
		if (CONTROL_TYPE_SELECT.equals(controlType)) {
			List<SystemDict> dictList = SystemDictCache.getDictList(dictKey);
			results.append("<select id='" + ctrName + "' class='form-select' ");
			if (disabled) {
				results.append("disabled='disabled'");
			}
			results.append("name='" + ctrName + "' required/>");
			if (StringUtils.isEmpty(defaultText)) {
				defaultText="Please select";
			}
			results.append("<OPTION VALUE='" + "" + "'  >" + defaultText
					+ "</OPTION>\n");
			for (SystemDict item : dictList) {
				results.append("<OPTION VALUE='" + item.getDictValue() + "'");
				if (defaultValue != null
						&& defaultValue.equals(item.getDictValue())) {
					results.append("selected='true'");
				}
				results.append(" >" + item.getDictName() + "</OPTION>\n");
			}
			results.append("</select>");
		}
		pageContext.getOut().write(results.toString());
	}

	
	/** 传递的值*/
	protected String dictKey;
	/** 该属性的名称*/
	protected String ctrName;
	protected String dictValue;
	protected String defaultValue;
	protected String defaultText;
	protected boolean disabled;

	public boolean isDisabled() {
		return disabled;
	}

	public void setDisabled(boolean disabled) {
		this.disabled = disabled;
	}

	public String getDefaultValue() {
		return defaultValue;
	}

	public void setDefaultValue(String defaultValue) {
		this.defaultValue = defaultValue;
	}

	public String getDefaultText() {
		return defaultText;
	}

	public void setDefaultText(String defaultText) {
		this.defaultText = defaultText;
	}

	public String getControlType() {
		return controlType;
	}

	public void setControlType(String controlType) {
		this.controlType = controlType;
	}

	public String getDictKey() {
		return dictKey;
	}

	public void setDictKey(String dictKey) {
		this.dictKey = dictKey;
	}

	public String getCtrName() {
		return ctrName;
	}

	public void setCtrName(String ctrName) {
		this.ctrName = ctrName;
	}

	public String getDictValue() {
		return dictValue;
	}

	public void setDictValue(String dictValue) {
		this.dictValue = dictValue;
	}

}