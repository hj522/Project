package sample.vo;

public class SampleVO {
	private String id;
	private String pw;
	
	public SampleVO() {}
	public SampleVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	@Override
	public String toString() {
		return String.format("SampleVO [id=%s, pw=%s]", id, pw);
	}
	
	
}
