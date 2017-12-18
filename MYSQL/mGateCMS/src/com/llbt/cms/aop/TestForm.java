package com.llbt.cms.aop;


import java.io.Serializable;  
  
  
public class TestForm implements Serializable{  
    private static final long serialVersionUID = 1L;  
      
    @Must  
    private int age;  
      
    @Must  
    private String[] pics;  
      
    @Must  
    private long goodsIds;  
      
    public String[] getPics() {  
        return pics;  
    }  
    public void setPics(String[] pics) {  
        this.pics = pics;  
    }  
    public int getAge() {  
        return age;  
    }  
    public void setAge(int age) {  
        this.age = age;  
    }  
    public long getGoodsIds() {  
        return goodsIds;  
    }  
    public void setGoodsIds(long goodsIds) {  
        this.goodsIds = goodsIds;  
    }  
}  