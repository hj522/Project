package partnersinsert.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import partnersinsert.vo.PartnersInsertVO;
import util.MyBatisUtil;

public class PartnersInsertDAOImpl implements IPartnersInsertDAO{
	
	private static IPartnersInsertDAO partDAO;
	
	private SqlSession sqlSession;
	
	private PartnersInsertDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IPartnersInsertDAO getInstance() {
		if(partDAO == null) {
			partDAO = new PartnersInsertDAOImpl();
		}
		return partDAO;
	}

	@Override
	public int insertPartnersFind(PartnersInsertVO pfv) {
		int cnt = sqlSession.insert("partners.insertPartners",pfv);
		return cnt;
	}

	@Override
	public boolean checkPartnersFind(String partId) {
		boolean chk = false;
		int cnt = sqlSession.selectOne("partners.checkPartners", partId);
		if(cnt > 0) {
			chk = true;
		}
		return chk;
	}

	@Override
	public int updatePartnersFind(PartnersInsertVO pfv) {
		int cnt = sqlSession.update("partners.updatePartners", pfv);
		return cnt;
	}

	@Override
	public int deletePartnersFind(String partId) {
		int cnt = sqlSession.delete("partners.deletePartners",partId);
		return cnt;
	}

	@Override
	public List<PartnersInsertVO> getAllPartnersList() {
		List<PartnersInsertVO> partList = sqlSession.selectList("partners.partnersAllList");
		return partList;
	}

	@Override
	public List<PartnersInsertVO> searchPartnersList(PartnersInsertVO pfv) {
		List<PartnersInsertVO> partList = sqlSession.selectList("partners.searchPartnersAllList");
		return partList;
	}

}
