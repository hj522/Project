package manager.dao;

import org.apache.ibatis.session.SqlSession;

import util.MyBatisUtil;

public class ManagerDAOImpl implements IManagerDAO {

	private static IManagerDAO ManaDao;
	
	private SqlSession SqlSession;
	
	private ManagerDAOImpl() {
		SqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IManagerDAO getInstance() {
		if(ManaDao == null) {
			ManaDao = new ManagerDAOImpl();
		}
		return ManaDao;
	}
	
}
