/*
 * Copyright 2010-2013 the original author or authors.
 *
 *      http://www.huiwei.com/
 *
 */
package com.llbt.cms.entity;

import com.llbt.cms.common.BaseEntity;
/**
 * CodeConstrast实体对象
 * 
 * @author 修改成自己的名字
 * @version 1.0
 */
public class CodeConstrast extends BaseEntity {
	  private static final long serialVersionUID = -4218415941397252005L;
		/** 所属系统:0全部 1customer 2merchant */
		private java.lang.String refSystem ;
		/** 系统错误码 */
		private java.lang.String errorCode ;
		/** 系统错误信息 */
		private java.lang.String errorInfo ;
		/** 转义标示:0未转义,1已转义 */
		private java.lang.String transFlag ;
		/** 转译信息 */
		private java.lang.String transInfo ;
		/** CPS错误码 */
		private java.lang.String cpsErrorCode ;
		/** CPS错误信息 */
		private java.lang.String cpsErrorInfo ;
		/** 删除状态:0未删除 1已删除 */
		private int isDelete ;

		/**
	     * @return the refSystem
	     */
		public java.lang.String getRefSystem() {
			return this.refSystem;
		}
		/**
	     * @param refSystem the refSystem to set
	     */
		public void setRefSystem(java.lang.String refSystem) {
			this.refSystem = refSystem;
		}
		/**
	     * @return the errorCode
	     */
		public java.lang.String getErrorCode() {
			return this.errorCode;
		}
		/**
	     * @param errorCode the errorCode to set
	     */
		public void setErrorCode(java.lang.String errorCode) {
			this.errorCode = errorCode;
		}
		/**
	     * @return the errorInfo
	     */
		public java.lang.String getErrorInfo() {
			return this.errorInfo;
		}
		/**
	     * @param errorInfo the errorInfo to set
	     */
		public void setErrorInfo(java.lang.String errorInfo) {
			this.errorInfo = errorInfo;
		}
		/**
	     * @return the transFlag
	     */
		public java.lang.String getTransFlag() {
			return this.transFlag;
		}
		/**
	     * @param transFlag the transFlag to set
	     */
		public void setTransFlag(java.lang.String transFlag) {
			this.transFlag = transFlag;
		}
		/**
	     * @return the transInfo
	     */
		public java.lang.String getTransInfo() {
			return this.transInfo;
		}
		/**
	     * @param transInfo the transInfo to set
	     */
		public void setTransInfo(java.lang.String transInfo) {
			this.transInfo = transInfo;
		}
		/**
	     * @return the cpsErrorCode
	     */
		public java.lang.String getCpsErrorCode() {
			return this.cpsErrorCode;
		}
		/**
	     * @param cpsErrorCode the cpsErrorCode to set
	     */
		public void setCpsErrorCode(java.lang.String cpsErrorCode) {
			this.cpsErrorCode = cpsErrorCode;
		}
		/**
	     * @return the cpsErrorInfo
	     */
		public java.lang.String getCpsErrorInfo() {
			return this.cpsErrorInfo;
		}
		/**
	     * @param cpsErrorInfo the cpsErrorInfo to set
	     */
		public void setCpsErrorInfo(java.lang.String cpsErrorInfo) {
			this.cpsErrorInfo = cpsErrorInfo;
		}
		/**
	     * @return the isDelete
	     */
		public int getIsDelete() {
			return this.isDelete;
		}
		/**
	     * @param isDelete the isDelete to set
	     */
		public void setIsDelete(int isDelete) {
			this.isDelete = isDelete;
		}
	}

