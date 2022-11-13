package partners.service;

import java.util.List;

import client.vo.ClientVO;
import partners.dao.IPartnersDAO;
import partners.dao.PartnersDAOImpl;
import partners.vo.PartnersVO;

public class PartnersServiceImpl implements IPartnersService {

	private IPartnersDAO partDao;
	
	private static IPartnersService partService;
	
	private PartnersServiceImpl() {
		partDao = PartnersDAOImpl.getInstance();
	}
	
	public static IPartnersService getInstance() {
		if(partService == null) {
			partService = new PartnersServiceImpl();
		}
		return partService;
	}
	
	@Override
	public int SignUpPartners(PartnersVO pv) {
		int cnt = partDao.signUpPartners(pv);
		return cnt;
	}

	@Override
	public boolean checkPartners(String partId) {
		boolean chk = partDao.checkPartners(partId);
		return chk;
	}

	@Override
	public int modifyPartners(PartnersVO pv) {
		int cnt = partDao.updatePartners(pv);
		return cnt;
	}

	@Override
	public int removePartners(String partId) {
		int cnt = partDao.deletePartners(partId);
		return cnt;
	}

	@Override
	public PartnersVO getPartners(String partId) {
		PartnersVO pv = partDao.getPartners(partId);
		return pv;
	}

	@Override
	public List<PartnersVO> getAllPartnersList() {
		List<PartnersVO> ptList = partDao.getAllPartnersList();
		return ptList;
	}
}
