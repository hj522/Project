package inspection.dao;

import java.util.List;

import projectinsert.vo.ProjectInsertVO;

public interface ISelectInspectionDAO {
	
	public List<ProjectInsertVO> getAllSelectInspection();
	
	public List<ProjectInsertVO> getAllSelectInspection(ProjectInsertVO ins);

	public ProjectInsertVO getSelectInspection(ProjectInsertVO pVO);

	public int getUpdateInspection(ProjectInsertVO pv);

	public int UpdateInspectionF(ProjectInsertVO pVO);

	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO pvo);

}
