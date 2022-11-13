package inspectionCl.service;

import java.util.List;

import inspection.dao.SelectInspectionDAOImpl;
import inspectionCl.dao.ISelectInspectionClDAO;
import inspectionCl.dao.SelectInspectionClDAOImpl;
import projectinsert.vo.ProjectInsertVO;

public class SelectInspectionClServiceImpl implements ISelectInspectionClService {
	
	private static ISelectInspectionClService insService;
	private static ISelectInspectionClDAO insDao;
	
	public SelectInspectionClServiceImpl() {
		insDao = SelectInspectionClDAOImpl.getInstance();
	}
	
	public static ISelectInspectionClService getInstance() {
		if(insService == null) {
			insService = new SelectInspectionClServiceImpl();
		}
		return insService;
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl() {
		List<ProjectInsertVO> sinList = insDao.getAllSelectInspectionCl(); 
		return sinList;
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO ins) {
		List<ProjectInsertVO> sinList = insDao.getAllSelectInspectionCl();
		return sinList;
	}

	@Override
	public ProjectInsertVO getSelectInspectionCl(ProjectInsertVO pVO) {
		return insDao.getSelectInspectionCl(pVO);
	}

	@Override
	public int UpdateInspectionCl(ProjectInsertVO pv) {
		return insDao.getUpdateInspectionCl(pv);
	}

	@Override
	public int UpdateInspectionClF(ProjectInsertVO pVO) {
		return insDao.getUpdateInspectionCl(pVO);
	}

}
