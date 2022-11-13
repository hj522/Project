package reply.service;

import java.util.List;

import reply.vo.ReplyVO;

public interface IReplyService {
	
	public int RegisterReply(ReplyVO rv);
	
	public ReplyVO getSelectOne(int inNum);
	
	public int removeReply(int repNum);
	
	public int modifyReply(ReplyVO rv);

	public ReplyVO getReply(int repNum);
	
	public List<ReplyVO> getRepList(ReplyVO rv);
}
