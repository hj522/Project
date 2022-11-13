package client.service;

import java.util.List;

import client.dao.ClientDAOImpl;
import client.dao.IClientDAO;
import client.vo.ClientVO;

public class ClientServiceImpl implements IClientService {

	private IClientDAO clDao;
	
	private static IClientService clService;

	private ClientServiceImpl() {
		clDao = ClientDAOImpl.getInstance(); 
	}
	
	public static IClientService getInstance() {
		if(clService == null) {
			clService = new ClientServiceImpl();
		}
		return clService;
	}

	@Override
	public int SignUpClient(ClientVO cv) {
		int cnt = clDao.signUpClient(cv);
		return cnt;
	}

	@Override
	public boolean checkClient(String clId) {
		boolean chk = clDao.checkClient(clId);
		return chk;
	}


	@Override
	public int modifyClient(ClientVO cv) {
		int cnt = clDao.updateClient(cv);
		return cnt;
	}

	@Override
	public int removeClient(String clId) {
		int cnt = clDao.deleteClient(clId);
		return cnt;
	}

	@Override
	public ClientVO getClient(String clId) {
		ClientVO cv = clDao.getClient(clId);
		return cv;
	}

	@Override
	public List<ClientVO> getAllClientList() {
		List<ClientVO> clList = clDao.getAllClientList();
		return clList;
	}
}
