package notification.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import notification.vo.NotificationVO;
import projectinsert.vo.ProjectInsertVO;
import util.MyBatisUtil;

public class NotificationDAOImpl implements INotificationDAO {
	private static INotificationDAO notiDao;
	private SqlSession sqlSession;
	
	public NotificationDAOImpl() {
		sqlSession = MyBatisUtil.getInstance(true);
	}
	public static INotificationDAO getInstance() {
		if(notiDao == null) {
			notiDao = new NotificationDAOImpl();
		}
		return notiDao;
	}
	
	@Override
	public int insertNotification(NotificationVO vo) {
		int row = sqlSession.insert("notification.insertNotification",vo);
		return row;
	}
	@Override
	public List<NotificationVO> getAllNotificationList() {
		List<NotificationVO> notiList = sqlSession.selectList("notification.notificationAllList");
		return notiList;
	}
	@Override
	public List<NotificationVO> searchNotificationList(NotificationVO nv) {
		List<NotificationVO> notiList = sqlSession.selectList("notification.searchNotificationList", nv);
		return notiList;
	}
	@Override
	public List<ProjectInsertVO> selectInspecNotification(ProjectInsertVO pv) {
		List<ProjectInsertVO> pvList = sqlSession.selectList("projectNotification", pv);
		return pvList;
	}
	@Override
	public List<ProjectInsertVO> selectAppInspecNotification(ProjectInsertVO pv) {
		return sqlSession.selectList("selectAppInspecNotification", pv);
	}
}
