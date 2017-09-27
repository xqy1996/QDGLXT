package com.sys.model;

import java.io.Serializable;
import java.util.List;

public class DataGridResult implements Serializable{

	@Override
	public String toString() {
		return "DataGridResult [total=" + total + ", rows=" + rows + "]";
	}
	private static final long serialVersionUID = 8948055690107037921L;
	private Long total;//�ܼ�¼��
	private List<?> rows;//���ݼ�
	
	public DataGridResult(Long total, List<?> rows) {
		this.total = total;
		this.rows = rows;
	}
	public Long getTotal() {
		return total;
	}
	public void setTotal(Long total) {
		this.total = total;
	}
	public List<?> getRows() {
		return rows;
	}
	public void setRows(List<?> rows) {
		this.rows = rows;
	}
	
}
