package reply.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import reply.vo.ReplyVO;
import util.MyBatisUtil;

public class ReplyDAOImpl implements IReplyDAO {

	private static IReplyDAO reDao;
	
	private SqlSession SqlSession;
	
	private ReplyDAOImpl() {
		SqlSession = MyBatisUtil.getInstance(true);
	}
	
	public static IReplyDAO getInstance() {
		if(reDao == null) {
			reDao = new ReplyDAOImpl();
		}
		return reDao;
	}

	@Override
	public int insertReply(ReplyVO rv) {
		int cnt = SqlSession.insert("reply.insertReply", rv);
		return cnt;
	}


	@Override
	public ReplyVO getSelect(int inNum) {
		ReplyVO vo = SqlSession.selectOne("reply.getReply", inNum);
		return vo;
	}

	@Override
	public int deleteReply(int repNum) {
		int cnt = SqlSession.delete("reply.deleteReply", repNum);
		return cnt;
	}

	@Override
	public int updateReply(ReplyVO rv) {
		int cnt = SqlSession.update("reply.updateInquery", rv);
		return cnt;
	}

	@Override
	public int removeReply(int repNum) {
		int cnt = SqlSession.delete("reply.deleteReply", repNum);
		return cnt;
	}

	@Override
	public int modifyReply(ReplyVO rv) {
		int cnt = SqlSession.update("reply.updateInquery", rv);
		return cnt;
	}

	@Override
	public ReplyVO getReply(int repNum) {
		ReplyVO reVO = SqlSession.selectOne("reply.getReply", repNum);
		return null;
	}

	@Override
	public List<ReplyVO> getRepList(ReplyVO rv) {
		List<ReplyVO> repList = SqlSession.selectList("reply.getRepList", rv);
		return repList;
	}
}
