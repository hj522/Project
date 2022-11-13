package sample.service;

import sample.dao.ISampleDAO;
import sample.dao.SampleDAO;
import sample.vo.SampleVO;

public class SampleService implements ISampleService {
	public static ISampleService samService;
	private ISampleDAO samDao;
	
	private SampleService() {
		samDao = SampleDAO.getInstance();
	}
	public static ISampleService getInstance() {
		if(samService == null) {
			samService = new SampleService();
		}
		return samService;
	}
	@Override
	public int registerSample(SampleVO vo) {
		int row = samDao.insertSample(vo);
		return row;
	}
	
}
