package client.service;

import java.util.List;

import client.vo.ClientVO;

public interface IClientService {

	public int SignUpClient(ClientVO cv);
	
	public boolean checkClient(String clId);
	
	public ClientVO getClient(String clId);
	
	public int modifyClient(ClientVO cv);
	
	public int removeClient(String clId);
	
	public List<ClientVO> getAllClientList();

}
