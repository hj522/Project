package notification.dao;

import java.util.List;

import notification.vo.NotificationVO;
import projectinsert.vo.ProjectInsertVO;

public interface INotificationDAO {
	public int insertNotification(NotificationVO vo);
	
	public List<NotificationVO> getAllNotificationList();
	
	public List<NotificationVO> searchNotificationList(NotificationVO nv);

	public List<ProjectInsertVO> selectInspecNotification(ProjectInsertVO pv);

	public List<ProjectInsertVO> selectAppInspecNotification(ProjectInsertVO pv);
}
