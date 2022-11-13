package projectinsert.dao;

import org.apache.ibatis.session.SqlSession;

import projectinsert.vo.ProjectInsertVO;
import util.MyBatisUtil;

public class ProjectInsertDAOImpl implements IProjectInsertDAO{
   
   private static ProjectInsertDAOImpl proDao;
   
   private SqlSession sqlSession;
   
   private ProjectInsertDAOImpl() {
      sqlSession = MyBatisUtil.getInstance(true);
   }
   
   public static ProjectInsertDAOImpl getInstance() {
      if(proDao == null) {
         proDao = new ProjectInsertDAOImpl();
      }
      return proDao;
   }

   @Override
   public int insertProjectInsert(ProjectInsertVO pfv) {
      int cnt = sqlSession.insert("project.insertProjectInsert", pfv);
      return cnt;
   }
   
   @Override
   public int ProjectInsertIng(ProjectInsertVO pfv) {
      int cnt = sqlSession.update("project.updateIng", pfv);
      return cnt;
   }

   @Override
   public int updateProjectInsert1(ProjectInsertVO pfv) {
      int cnt = sqlSession.update("project.updateProjectInsert1", pfv);
      return cnt;
   }

   

   @Override
   public int updateProjectInsert2(ProjectInsertVO pfv) {
      int cnt = sqlSession.update("project.updateProjectInsert2", pfv);
      return cnt;
   }

@Override
public int updateProjectInsert3(ProjectInsertVO pfv) {
    int cnt = sqlSession.update("project.updateProjectInsert3", pfv);
    return cnt;
}

@Override
public int updateProjectInsert4(ProjectInsertVO pfv) {
    int cnt = sqlSession.update("project.updateProjectInsert4", pfv);
    return cnt;
}

@Override
public int updateProjectInsert5(ProjectInsertVO pfv) {
    int cnt = sqlSession.update("project.updateProjectInsert5", pfv);
    return cnt;
}

@Override
public int updateProjectInsert6(ProjectInsertVO pfv) {
    int cnt = sqlSession.update("project.updateProjectInsert6", pfv);
    return cnt;
}

@Override
public int updateProjectInsert7(ProjectInsertVO pfv) {
    int cnt = sqlSession.update("project.updateProjectInsert7", pfv);
    return cnt;
}

@Override
public int updateIng() {
    int cnt = sqlSession.update("project.updateIng");
    return cnt;
}



}