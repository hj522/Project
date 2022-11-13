package partners.dao;

import partners.vo.PartnersVO;
import util.MyBatisUtil;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import client.vo.ClientVO;

public class PartnersDAOImpl implements IPartnersDAO {

	private static IPartnersDAO PartDao;
	
	private SqlSession SqlSession;
	
	private PartnersDAOImpl() {
		SqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IPartnersDAO getInstance() {
		if(PartDao == null) {
			PartDao = new PartnersDAOImpl();
		}
		return PartDao;
	}

	@Override
	public int signUpPartners(PartnersVO pv) {
		int cnt = SqlSession.insert("partners.signUpPartners", pv);
		return cnt;
	}

	@Override
	public boolean checkPartners(String partId) {
		return false;
	}

	@Override
	public PartnersVO getPartners(String partId) {
		PartnersVO ptVO = SqlSession.selectOne("partners.getPartners", partId);
		return ptVO;
	}

	@Override
	public int updatePartners(PartnersVO pv) {
		return 0;
	}

	@Override
	public int deletePartners(String partId) {
		return 0;
	}

	@Override
	public List<PartnersVO> getAllPartnersList() {
		List<PartnersVO> ptList = SqlSession.selectList("partners.partnersAllList");
		return ptList;
	}
	
	
	
}
