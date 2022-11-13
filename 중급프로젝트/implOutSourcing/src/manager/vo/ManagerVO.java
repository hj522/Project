package manager.vo;

public class ManagerVO {

	private String ManaId;	// 아이디
	private String ManaPw;	// 비밀번호
	private String ManaEm;	// 이메일
	
	public ManagerVO(String manaId, String manaPw, String manaEm) {
		ManaId = manaId;
		ManaPw = manaPw;
		ManaEm = manaEm;
	}
	
	public String getManaId() {
		return ManaId;
	}
	public void setManaId(String manaId) {
		ManaId = manaId;
	}
	public String getManaPw() {
		return ManaPw;
	}
	public void setManaPw(String manaPw) {
		ManaPw = manaPw;
	}
	public String getManaEm() {
		return ManaEm;
	}
	public void setManaEm(String manaEm) {
		ManaEm = manaEm;
	}
	
	@Override
	public String toString() {
		return "ManagerVO [ManaId=" + ManaId + ", ManaPw=" + ManaPw + ", ManaEm=" + ManaEm + "]";
	}
	
	
}
