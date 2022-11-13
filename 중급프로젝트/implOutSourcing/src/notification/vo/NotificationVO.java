package notification.vo;

public class NotificationVO {
	
	private String pjId;
	private String clId;
	private String partId;
	private String manaId;
	
	public NotificationVO() {}

	public String getPjId() {
		return pjId;
	}

	public void setPjId(String pjId) {
		this.pjId = pjId;
	}

	public String getClId() {
		return clId;
	}

	public void setClId(String clId) {
		this.clId = clId;
	}

	public String getPartId() {
		return partId;
	}

	public void setPartId(String partId) {
		this.partId = partId;
	}

	public String getManaId() {
		return manaId;
	}

	public void setManaId(String manaId) {
		this.manaId = manaId;
	}

	@Override
	public String toString() {
		return "NotificationVO [pjId=" + pjId + ", clId=" + clId + ", partId=" + partId + ", manaId=" + manaId + "]";
	}
	
	
}
