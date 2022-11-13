package inspection.service;

import java.util.List;

import inspection.dao.ISelectInspectionDAO;
import inspection.dao.SelectInspectionDAOImpl;
import projectinsert.vo.ProjectInsertVO;

public class SelectInspectionServiceImpl implements ISelectInspectionService {
	
	private static ISelectInspectionService insService;
	private static ISelectInspectionDAO insDao;
	
	public SelectInspectionServiceImpl() {
		insDao = SelectInspectionDAOImpl.getInstance();
	}
	
	public static ISelectInspectionService getInstance() {
		if(insService == null) {
			insService = new SelectInspectionServiceImpl();
		}
		return insService;
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspection() {
		List<ProjectInsertVO> sinList = insDao.getAllSelectInspection();
		return sinList;
	}
	public List<ProjectInsertVO> getAllSelectInspection(ProjectInsertVO ins) {
		List<ProjectInsertVO> sinList = insDao.getAllSelectInspection();
		return sinList;
	}

	@Override
	public ProjectInsertVO getSelectInspection(ProjectInsertVO pVO) {
		return insDao.getSelectInspection(pVO);
	}

	@Override
	public int UpdateInspection(ProjectInsertVO pv) {
		return insDao.getUpdateInspection(pv);
	}

	@Override
	public int UpdateInspectionF(ProjectInsertVO pVO) {
		return insDao.UpdateInspectionF(pVO);
	}

	@Override
	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO pvo) {
		return insDao.getAllSelectInspectionCl(pvo);
	}
	
}
