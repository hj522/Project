package partners.dao;

import java.util.List;

import partners.vo.PartnersVO;

public interface IPartnersDAO {
	
	public int signUpPartners(PartnersVO pv);
	
	public boolean checkPartners(String partId);
	
	public PartnersVO getPartners(String partId);
	
	public int updatePartners(PartnersVO pv);
	
	public int deletePartners(String partId);

	public List<PartnersVO> getAllPartnersList();
}
