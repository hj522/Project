package sample.dao;

import org.apache.ibatis.session.SqlSession;

import sample.vo.SampleVO;
import util.MyBatisUtil;

public class SampleDAO implements ISampleDAO {
	private static ISampleDAO samDao;
	private SqlSession sqlSession;
	
	public SampleDAO() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	public static ISampleDAO getInstance() {
		if(samDao == null) {
			samDao = new SampleDAO();
		}
		return samDao;
	}
	
	@Override
	public int insertSample(SampleVO vo) {
		int row = sqlSession.insert("sample.insertSample", vo);
		return row;
	}
	
}
