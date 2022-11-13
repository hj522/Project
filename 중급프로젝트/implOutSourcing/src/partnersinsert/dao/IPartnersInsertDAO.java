package partnersinsert.dao;

import java.util.List;

import partnersinsert.vo.PartnersInsertVO;

public interface IPartnersInsertDAO {

	public int insertPartnersFind(PartnersInsertVO pfv);
	
	public boolean checkPartnersFind(String partId);
	
	public int updatePartnersFind(PartnersInsertVO pfv);
	
	public int deletePartnersFind(String partId);
	
	public List<PartnersInsertVO>getAllPartnersList();
	
	public List<PartnersInsertVO>searchPartnersList(PartnersInsertVO pfv);
}
