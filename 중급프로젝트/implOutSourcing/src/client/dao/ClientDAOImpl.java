package client.dao;

import client.vo.ClientVO;
import util.MyBatisUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

public class ClientDAOImpl implements IClientDAO {

	private static IClientDAO ClDao;
	
	private SqlSession SqlSession;
	
	private ClientDAOImpl() {
		SqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IClientDAO getInstance() {
		if(ClDao == null) {
			ClDao = new ClientDAOImpl();
		}
		return ClDao;
	}
	
	@Override
	public int signUpClient(ClientVO cv) {
		int cnt = SqlSession.insert("client.signUpClient", cv);
		return cnt;
	}

	@Override
	public boolean checkClient(String clId) {
		boolean chk = false;
		
		int cnt = SqlSession.selectOne("client.checkClient", clId);
		
		if(cnt > 0) {
			chk = true;
		}
		
		return false;
	}

	@Override
	public int updateClient(ClientVO cv) {
		int cnt = SqlSession.update("client.updateClient", cv);
		return cnt;
	}

	@Override
	public int deleteClient(String clId) {
		int cnt = SqlSession.delete("client.deleteClient", clId);
		return 0;
	}

	@Override
	public ClientVO getClient(String clId) {
		ClientVO clVO = SqlSession.selectOne("client.getClient", clId);
		return clVO;
	}

	@Override
	public List<ClientVO> getAllClientList() {
		List<ClientVO> clList = SqlSession.selectList("client.clientAllList");
		return clList;
	}
}
