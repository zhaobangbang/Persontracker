package com.lansitec.springmvc.beans;

import java.util.List;

import com.lansitec.dao.beans.GatewayInfo;

public class GateWayInfoRspBean {
	private int page;
	private int total;
	private int records;
	private List<GatewayInfo> rows;
	public GateWayInfoRspBean(int page,int total,int records,List<GatewayInfo> rows){
		this.page = page;
		this.total = total;
		this.records = records;
		this.rows = rows;
	}

	public int getPage() {
		return page;
	}

	public int getTotal() {
		return total;
	}

	public int getRecords() {
		return records;
	}

	public List<GatewayInfo> getRows() {
		return rows;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public void setRecords(int records) {
		this.records = records;
	}

	public void setRows(List<GatewayInfo> rows) {
		this.rows = rows;
	}
}
