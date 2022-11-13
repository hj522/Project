package inspection.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import projectinsert.vo.ProjectInsertVO;
import util.MyBatisUtil;

public class SelectInspectionDAOImpl implements ISelectInspectionDAO {
	
	private static ISelectInspectionDAO insDao;
	private SqlSession sqlSession;
	
	public SelectInspectionDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	public static ISelectInspectionDAO getInstance() {
		if(insDao == null) {
			insDao = new SelectInspectionDAOImpl();
		}
		return insDao;
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspection() {
		List<ProjectInsertVO> sivList = sqlSession.selectList("inspection.selectInspection");
		return sivList;
	}
	@Override
	public List<ProjectInsertVO> getAllSelectInspection(ProjectInsertVO ins) {
		List<ProjectInsertVO> sivList = sqlSession.selectList("inspection.selectInspection");
		return sivList;
	}
	@Override
	public ProjectInsertVO getSelectInspection(ProjectInsertVO pVO) {
		return sqlSession.selectOne("inspection.getSelectInspection",pVO);
	}
	@Override
	public int getUpdateInspection(ProjectInsertVO pv) {
		// 										"이부분이 해당 xml에서 sql id가 되는거야"
		//																				얘는 파라미터
		return sqlSession.update("inspection.getUpdateInspection", pv);
	}
	@Override
	public int UpdateInspectionF(ProjectInsertVO pVO) {
		return sqlSession.update("inspection.updateInspectionF", pVO);
	}
	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO pvo) {
		return sqlSession.selectList("inspection.getAllSelectInspectionCl", pvo);
	}
	
}
