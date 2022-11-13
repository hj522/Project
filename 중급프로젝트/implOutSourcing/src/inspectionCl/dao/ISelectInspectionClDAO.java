package inspectionCl.dao;

import java.util.List;

import projectinsert.vo.ProjectInsertVO;

public interface ISelectInspectionClDAO {

	public List<ProjectInsertVO> getAllSelectInspectionCl();
	
	public List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO ins);
	
	public ProjectInsertVO getSelectInspectionCl(ProjectInsertVO pVO);
	
	public int getUpdateInspectionCl(ProjectInsertVO pv);
	
	public int UpdateInspectionF(ProjectInsertVO pVO);
}
