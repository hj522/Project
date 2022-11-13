package inspectionCl.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import inspection.dao.SelectInspectionDAOImpl;
import projectinsert.vo.ProjectInsertVO;
import util.MyBatisUtil;

public class SelectInspectionClDAOImpl implements ISelectInspectionClDAO {
	
	private static ISelectInspectionClDAO insDao;
	private SqlSession sqlSession;
	
	public SelectInspectionClDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	public static ISelectInspectionClDAO getInstance() {
		if(insDao == null) {
			insDao = new SelectInspectionClDAOImpl();
		}
		return insDao;
		
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl() {
		List<ProjectInsertVO> sivList = sqlSession.selectList("inspectionCl.selectInsepectionCl");
		return sivList;
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO ins) {
		List<ProjectInsertVO> sivList = sqlSession.selectList("inspectionCl.selectInsepectionCl");
		return sivList;
	}

	@Override
	public ProjectInsertVO getSelectInspectionCl(ProjectInsertVO pVO) {
		return sqlSession.selectOne("inspectionCl.getSelectInspectionCl",pVO);
	}

	@Override
	public int getUpdateInspectionCl(ProjectInsertVO pv) {
		return sqlSession.update("inspectionCl.getUpdateInspectionCl", pv);
	}

	@Override
	public int UpdateInspectionF(ProjectInsertVO pVO) {
		return sqlSession.update("inspectionCl.UpdateInspectionCl",pVO);
	}

}
