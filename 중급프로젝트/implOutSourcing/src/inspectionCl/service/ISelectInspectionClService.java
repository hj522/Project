package inspectionCl.service;

import java.util.List;

import projectinsert.vo.ProjectInsertVO;

public interface ISelectInspectionClService {

	List<ProjectInsertVO> getAllSelectInspectionCl();
	
	List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO ins);
	
	ProjectInsertVO getSelectInspectionCl(ProjectInsertVO pVO);
	
	int UpdateInspectionCl(ProjectInsertVO pv);
	
	int UpdateInspectionClF(ProjectInsertVO pVO);

}
