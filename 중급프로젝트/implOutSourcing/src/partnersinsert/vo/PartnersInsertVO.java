package partnersinsert.vo;

public class PartnersInsertVO {

	private String partId;
	private String partNm;
	private String partPh;
	private String partEm;
	private String partOc;
	private String partTy;
	private String partCer;
	private String partInt;
	private String partAddr;
	private String reNum;
	
	public PartnersInsertVO(String partId, String partNm, String partPh, String partEm, String partOc, String partTy,
			String partCer, String partInt, String partAddr, String reNum) {
		super();
		this.partId = partId;
		this.partNm = partNm;
		this.partPh = partPh;
		this.partEm = partEm;
		this.partOc = partOc;
		this.partTy = partTy;
		this.partCer = partCer;
		this.partInt = partInt;
		this.partAddr = partAddr;
		this.reNum = reNum;
	}

	public String getPartId() {
		return partId;
	}

	public void setPartId(String partId) {
		this.partId = partId;
	}

	public String getPartNm() {
		return partNm;
	}

	public void setPartNm(String partNm) {
		this.partNm = partNm;
	}

	public String getPartPh() {
		return partPh;
	}

	public void setPartPh(String partPh) {
		this.partPh = partPh;
	}

	public String getPartEm() {
		return partEm;
	}

	public void setPartEm(String partEm) {
		this.partEm = partEm;
	}

	public String getPartOc() {
		return partOc;
	}

	public void setPartOc(String partOc) {
		this.partOc = partOc;
	}

	public String getPartTy() {
		return partTy;
	}

	public void setPartTy(String partTy) {
		this.partTy = partTy;
	}

	public String getPartCer() {
		return partCer;
	}

	public void setPartCer(String partCer) {
		this.partCer = partCer;
	}

	public String getPartInt() {
		return partInt;
	}

	public void setPartInt(String partInt) {
		this.partInt = partInt;
	}

	public String getPartAddr() {
		return partAddr;
	}

	public void setPartAddr(String partAddr) {
		this.partAddr = partAddr;
	}

	public String getReNum() {
		return reNum;
	}

	public void setReNum(String reNum) {
		this.reNum = reNum;
	}

	@Override
	public String toString() {
		return "PartnersFindVO [partId=" + partId + ", partNm=" + partNm + ", partPh=" + partPh + ", partEm=" + partEm
				+ ", partOc=" + partOc + ", partTy=" + partTy + ", partCer=" + partCer + ", partInt=" + partInt
				+ ", partAddr=" + partAddr + ", reNum=" + reNum + "]";
	}
	
	
	
}
