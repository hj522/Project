package inquery.service;

import java.util.List;

import inquery.dao.IInqueryDAO;
import inquery.dao.InqueryDAOImpl;
import inquery.vo.InqueryVO;

public class InqueryServiceImpl implements IInqueryService {

	private IInqueryDAO inDao;
	
	private static IInqueryService inService;
	
	private InqueryServiceImpl() {
		inDao = InqueryDAOImpl.getInstance();
	}
	
	public static IInqueryService getInstance() {
		if(inService == null) {
			inService = new InqueryServiceImpl();
		}
		
		return inService;
	}

	@Override
	public int RegisterInquery(InqueryVO iv) {
		int cnt = inDao.insertInquery(iv);
		return cnt;
	}

	@Override
	public List<InqueryVO> getAllInqueryList() {
		List<InqueryVO> inList = inDao.getAllInqueryList();
		return inList;
	}

	@Override
	public InqueryVO getInquery(int inNum) {
		InqueryVO iv = inDao.getInquery(inNum);
		return iv;
	}

	@Override
	public int removeInquery(int inNum) {
		int cnt = inDao.deleteInquery(inNum);
		return cnt;
	}

	@Override
	public int modifyInquery(InqueryVO iv) {
		int cnt = inDao.updateInquery(iv);
		return cnt;
	}

	@Override
	public List<InqueryVO> getMyInqueryP(String partId) {
		List<InqueryVO> PList = inDao.getMyInqueryP(partId);
		return PList;
	}

	@Override
	public List<InqueryVO> getMyInqueryC(String clId) {
		List<InqueryVO> CList = inDao.getMyInqueryC(clId);
		return CList;
	}

}
