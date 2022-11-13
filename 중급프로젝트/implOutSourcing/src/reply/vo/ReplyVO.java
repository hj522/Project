package reply.vo;

import java.sql.Date;

public class ReplyVO {
	
	private int repNum; // 답글번호
	private String repCon; // 답글내용
	private Date repCrDt; // 답글 작성일
	private String manaId; // 관리자아이디
	private int inNum;
	
	public ReplyVO() {}
	
	public int getRepNum() {
		return repNum;
	}
	public void setRepNum(int repNum) {
		this.repNum = repNum;
	}
	public String getRepCon() {
		return repCon;
	}
	public void setRepCon(String repCon) {
		this.repCon = repCon;
	}
	public Date getRepCrDt() {
		return repCrDt;
	}
	public void setRepCrDt(Date repCrDt) {
		this.repCrDt = repCrDt;
	}
	public String getManaId() {
		return manaId;
	}
	public void setManaId(String manaId) {
		this.manaId = manaId;
	}

	public int getInNum() {
		return inNum;
	}

	public void setInNum(int inNum) {
		this.inNum = inNum;
	}

	@Override
	public String toString() {
		return "ReplyVO [repNum=" + repNum + ", repCon=" + repCon + ", repCrDt=" + repCrDt + ", manaId=" + manaId
				+ ", inNum=" + inNum + "]";
	}

}
