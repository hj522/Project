package inspection.service;

import java.util.List;

import projectinsert.vo.ProjectInsertVO;


public interface ISelectInspectionService {
	

	List<ProjectInsertVO> getAllSelectInspection();
	
	List<ProjectInsertVO> getAllSelectInspection(ProjectInsertVO ins);

	ProjectInsertVO getSelectInspection(ProjectInsertVO pVO);

	int UpdateInspection(ProjectInsertVO pv);

	int UpdateInspectionF(ProjectInsertVO pVO);

	List<ProjectInsertVO> getAllSelectInspectionCl(ProjectInsertVO pvo);

}
