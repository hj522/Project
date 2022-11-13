package reply.dao;

import java.util.List;

import reply.vo.ReplyVO;

public interface IReplyDAO {

	public int insertReply(ReplyVO rv);
	
	public ReplyVO getSelect(int inNum);
	
	public int deleteReply(int repNum);
	
	public int updateReply(ReplyVO rv);
	
	public int removeReply(int repNum);
	
	public int modifyReply(ReplyVO rv);

	public ReplyVO getReply(int repNum);

	public List<ReplyVO> getRepList(ReplyVO rv);

}
