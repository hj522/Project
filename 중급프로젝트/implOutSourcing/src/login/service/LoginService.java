package login.service;

import client.vo.ClientVO;
import login.dao.LoginDAO;
import login.vo.LoginVO;
import partners.vo.PartnersVO;

public class LoginService {
	private static LoginService instance;
	private LoginDAO logDao;

	private LoginService() {
		logDao = LoginDAO.getInstance();
	}

	public static LoginService getInstance() {
		if (instance == null) {
			instance = new LoginService();
		}
		return instance;
	}
	// 로그인
	public String pLogin(LoginVO vo) {
		String row = logDao.partnersLogin(vo);
		return row;
	}
	public PartnersVO pInfo(LoginVO vo) {
		PartnersVO row = logDao.partnersInfo(vo);
		return row;
	}
	public String cLogin(LoginVO vo) {
		String row = logDao.clientLogin(vo);
		return row;
	}
	public ClientVO cInfo(LoginVO vo) {
		ClientVO row = logDao.clientInfo(vo);
		return row;
	}
	public String mLogin(LoginVO vo) {
		String row = logDao.managerLogin(vo);
		return row;
	}
	
	// 아이디 찾기
	public String pfindId(LoginVO vo) {
		String row = logDao.pidFind(vo);
		return row;
	}
	public String cfindId(LoginVO vo) {
		String row = logDao.cidFind(vo);
		return row;
	}
	
	// 비밀번호 찾기
	public String cfindPw(LoginVO vo) {
		String row = logDao.cpwFind(vo);
		return row;
	}
	public String pfindPw(LoginVO vo) {
		String row = logDao.ppwFind(vo);
		return row;
	}
}
