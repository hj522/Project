package partners.service;

import java.util.List;

import client.vo.ClientVO;
import partners.vo.PartnersVO;

public interface IPartnersService {

	public int SignUpPartners(PartnersVO pv);
	
	public boolean checkPartners(String partId);
	
	public PartnersVO getPartners(String partId);
	
	public int modifyPartners(PartnersVO pv);
	
	public int removePartners(String partId);

	public List<PartnersVO> getAllPartnersList();
}
