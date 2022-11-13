package login.dao;

import org.apache.ibatis.session.SqlSession;

import client.vo.ClientVO;
import login.vo.LoginVO;
import partners.vo.PartnersVO;
import util.MyBatisUtil;

public class LoginDAO {
	private static LoginDAO instance;
	
	private SqlSession sqlSession;
	
	private LoginDAO() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static LoginDAO getInstance() {
		if(instance == null) {
			instance = new LoginDAO();
		}
		return instance;
	}
	// 로그인
	public String partnersLogin(LoginVO vo) {		
		String pv = sqlSession.selectOne("login.plogin", vo);
		return pv;
	}
	public PartnersVO partnersInfo(LoginVO vo) {		
		PartnersVO pv = sqlSession.selectOne("login.pinfo", vo);
		return pv;
	}
	public String clientLogin(LoginVO vo) {
		String cv = sqlSession.selectOne("login.clogin", vo);
		return cv;
	}
	public ClientVO clientInfo(LoginVO vo) {		
		ClientVO cv = sqlSession.selectOne("login.cinfo", vo);
		return cv;
	}
	public String managerLogin(LoginVO vo) {
		String mv = sqlSession.selectOne("login.mlogin", vo);
		return mv;
	}
	
	// 아이디 찾기
	public String cidFind(LoginVO vo) {
		String cv = sqlSession.selectOne("login.cfind", vo);
		return cv;
	}
	public String pidFind(LoginVO vo) {
		String pv = sqlSession.selectOne("login.pfind", vo);
		return pv;
	}
	
	// 비밀번호 찾기
	public String cpwFind(LoginVO vo) {
		String cv = sqlSession.selectOne("login.cfindpw", vo);
		return cv;
	}
	public String ppwFind(LoginVO vo) {
		String pv = sqlSession.selectOne("login.pfindpw", vo);
		return pv;
	}

}
