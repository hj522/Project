package reply.service;

import java.util.List;

import reply.dao.IReplyDAO;
import reply.dao.ReplyDAOImpl;
import reply.vo.ReplyVO;

public class ReplyServiceImpl implements IReplyService {

	private IReplyDAO reDao;
	
	private static IReplyService reService;
	
	private ReplyServiceImpl() {
		reDao = ReplyDAOImpl.getInstance();
	}
	
	public static IReplyService getInstance() {
		if(reService == null) {
			reService = new ReplyServiceImpl();
		}
		return reService;
	}

	@Override
	public int RegisterReply(ReplyVO rv) {
		int cnt = reDao.insertReply(rv);
		return cnt;
	}
	
	@Override
	public ReplyVO getSelectOne(int inNum) {
		ReplyVO vo = reDao.getSelect(inNum);
		return vo;
	}

	@Override
	public int removeReply(int repNum) {
		int cnt = reDao.deleteReply(repNum);
		return cnt;
	}

	@Override
	public int modifyReply(ReplyVO rv) {
		int cnt = reDao.updateReply(rv);
		return cnt;
	}

	@Override
	public ReplyVO getReply(int repNum) {
		ReplyVO rv = reDao.getReply(repNum);
		return rv;
	}

	@Override
	public List<ReplyVO> getRepList(ReplyVO rv) {
		List<ReplyVO> repList = reDao.getRepList(rv);
		return repList;
	}

}
