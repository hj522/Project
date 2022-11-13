package notification.service;

import java.util.List;

import notification.dao.INotificationDAO;
import notification.dao.NotificationDAOImpl;
import notification.vo.NotificationVO;
import projectinsert.vo.ProjectInsertVO;

public class NotificationServiceImpl implements INotificationService {
	private INotificationDAO notiDao;
	
	private static INotificationService notiService;

	private NotificationServiceImpl() {
		notiDao = NotificationDAOImpl.getInstance();
	}
	
	public static INotificationService getInstance() {
		if(notiService == null) {
			notiService = new NotificationServiceImpl();
		}
		return notiService;
	}

	@Override
	public int registerNotification(NotificationVO vo) {
		int row = notiDao.insertNotification(vo);
		return row;
	}

	@Override
	public List<NotificationVO> getAllNotificationList() {
		List<NotificationVO> notiList = notiDao.getAllNotificationList();
		return notiList;
	}

	@Override
	public List<NotificationVO> searchNotificationList(NotificationVO nv) {
		List<NotificationVO> notiList = notiDao.searchNotificationList(nv);
		return notiList;
	}

	@Override
	public List<ProjectInsertVO> selectInspecNotification(ProjectInsertVO pv) {
		List<ProjectInsertVO> pvList = notiDao.selectInspecNotification(pv);
		return pvList;
	}

	@Override
	public List<ProjectInsertVO> selectAppInspecNotification(ProjectInsertVO pv) {
		return notiDao.selectAppInspecNotification(pv);
	}

	
}
