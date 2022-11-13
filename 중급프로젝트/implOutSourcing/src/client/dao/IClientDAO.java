package client.dao;

import java.util.List;

import client.vo.ClientVO;

public interface IClientDAO {
	
	public int signUpClient(ClientVO cv);
	
	public boolean checkClient(String clId);
	
	public ClientVO getClient(String clId);
	
	public int updateClient(ClientVO cv);
	
	public int deleteClient(String clId);

	public List<ClientVO> getAllClientList();
	
}
