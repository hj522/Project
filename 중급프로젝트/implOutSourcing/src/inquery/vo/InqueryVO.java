package inquery.vo;

import java.sql.Date;

public class InqueryVO {
	
	private int inNum;
	private String inTit;
	private String inCon;
	private Date inCrDt;
	private String partId;
	private String clId;
	private int repNum;
	
	public InqueryVO() {
	}

	public int getInNum() {
		return inNum;
	}
	public void setInNum(int inNum) {
		this.inNum = inNum;
	}
	public String getInTit() {
		return inTit;
	}
	public void setInTit(String inTit) {
		this.inTit = inTit;
	}
	public String getInCon() {
		return inCon;
	}
	public void setInCon(String inCon) {
		this.inCon = inCon;
	}
	public Date getInCrDt() {
		return inCrDt;
	}
	public void setInCrDt(Date inCrDt) {
		this.inCrDt = inCrDt;
	}
	public String getPartId() {
		return partId;
	}
	public void setPartId(String partId) {
		this.partId = partId;
	}
	public String getClId() {
		return clId;
	}
	public void setClId(String clId) {
		this.clId = clId;
	}
	public int getRepNum() {
		return repNum;
	}
	public void setRepNum(int repNum) {
		this.repNum = repNum;
	}
	
	
	
}
