package inquery.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import inquery.vo.InqueryVO;
import util.MyBatisUtil;

public class InqueryDAOImpl implements IInqueryDAO {

	private static IInqueryDAO inDao;
	
	private SqlSession SqlSession;
	
	private InqueryDAOImpl() {
		SqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IInqueryDAO getInstance() {
		if(inDao == null) {
			inDao = new InqueryDAOImpl();
		}
		return inDao;
	}

	@Override
	public int insertInquery(InqueryVO iv) {
		int cnt = SqlSession.insert("inquery.insertInquery", iv);
		return cnt;
	}

	@Override
	public List<InqueryVO> getAllInqueryList() {
		List<InqueryVO> inList = SqlSession.selectList("inquery.inqueryAllList");
		return inList;
	}

	@Override
	public InqueryVO getInquery(int inNum) {
		InqueryVO inVO = SqlSession.selectOne("inquery.getInquery", inNum);
		return inVO;
	}

	@Override
	public int deleteInquery(int inNum) {
		int cnt = SqlSession.delete("inquery.deleteInquery", inNum);
		return cnt;
	}

	@Override
	public int updateInquery(InqueryVO iv) {
		int cnt = SqlSession.update("inquery.updateInquery", iv);
		return cnt;
	}

	@Override
	public List<InqueryVO> getMyInqueryP(String partId) {
		List<InqueryVO> PList = SqlSession.selectList("inquery.getMyInqueryP", partId);
		return PList;
	}

	@Override
	public List<InqueryVO> getMyInqueryC(String clId) {
		List<InqueryVO> CList = SqlSession.selectList("inquery.getMyInqueryC", clId);
		return CList;
	}

}