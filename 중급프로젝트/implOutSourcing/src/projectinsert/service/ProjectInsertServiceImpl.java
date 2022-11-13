	package projectinsert.service;

import projectinsert.dao.IProjectInsertDAO;
import projectinsert.dao.ProjectInsertDAOImpl;
import projectinsert.vo.ProjectInsertVO;

public class ProjectInsertServiceImpl implements IProjectInsertService{

   private static IProjectInsertService pjService;
   
   private IProjectInsertDAO pjDao;
   
   public ProjectInsertServiceImpl() {
      pjDao = ProjectInsertDAOImpl.getInstance();
   }
   
   public static IProjectInsertService getInstance() {
      if(pjService == null) {
         pjService = new ProjectInsertServiceImpl();
      }
      
      return pjService;
   }
   
   @Override
   public int registerProjectInsert(ProjectInsertVO pfv) {
      int cnt = pjDao.insertProjectInsert(pfv);
      return cnt;
   }

   @Override
   public int ingUpdate(ProjectInsertVO pfv) {
      int cnt = pjDao.ProjectInsertIng(pfv);
      return cnt;
   }
   
   @Override
   public int modifyProjectInsert1(ProjectInsertVO pfv) {
      int cnt = pjDao.updateProjectInsert1(pfv);
      return cnt;
   }

   @Override
   public int modifyProjectInsert2(ProjectInsertVO pfv) {
      int cnt = pjDao.updateProjectInsert2(pfv);
      return cnt;
   }

@Override
public int modifyProjectInsert3(ProjectInsertVO pfv) {
    int cnt = pjDao.updateProjectInsert3(pfv);
    return cnt;
}

@Override
public int modifyProjectInsert4(ProjectInsertVO pfv) {
    int cnt = pjDao.updateProjectInsert4(pfv);
    return cnt;
}

@Override
public int modifyProjectInsert5(ProjectInsertVO pfv) {
    int cnt = pjDao.updateProjectInsert5(pfv);
    return cnt;
}

@Override
public int modifyProjectInsert6(ProjectInsertVO pfv) {
    int cnt = pjDao.updateProjectInsert6(pfv);
    return cnt;
}

@Override
public int modifyProjectInsert7(ProjectInsertVO pfv) {
    int cnt = pjDao.updateProjectInsert7(pfv);
    return cnt;
}

@Override
public int updateIng() {
    int cnt = pjDao.updateIng();
    return cnt;
}

}